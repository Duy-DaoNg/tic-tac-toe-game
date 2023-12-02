package com.example.web.controllers;

import com.example.web.enities.History;
import com.example.web.repositories.HistoryRepository;
import com.example.web.utils.JwtUtil;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/history")
public class HistoryController {

    private final HistoryRepository historyRepository;
    @Autowired
    public HistoryController(HistoryRepository historyRepository) {
        this.historyRepository = historyRepository;
    }
    @GetMapping("")
    public ResponseEntity<HistoryResponse> getHistoryByPlayer(
            @RequestParam(defaultValue = "1") int page,
            @RequestParam(defaultValue = "10") int size,
            HttpServletRequest request) {
        String playerName = JwtUtil.getUsernameFromJwtCookie(request);
        System.out.println(playerName);
        Pageable pageable = PageRequest.of(page, size);
        Page<History> historyPage = historyRepository.findByPlayer1OrPlayer2(playerName, playerName, pageable);
        HistoryResponse response = new HistoryResponse(historyPage.getContent(), historyPage.getTotalPages());

        return ResponseEntity.ok(response);
    }
    private static class HistoryResponse {
        private final Iterable<History> historyList;
        private final int totalPages;

        public HistoryResponse(Iterable<History> historyList, int totalPages) {
            this.historyList = historyList;
            this.totalPages = totalPages;
        }

        public Iterable<History> getHistoryList() {
            return historyList;
        }

        public int getTotalPages() {
            return totalPages;
        }
    }
}
