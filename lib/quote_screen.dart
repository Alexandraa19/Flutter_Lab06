import 'package:flutter/material.dart';
import 'quote_data.dart';
import 'quote_card.dart';
import 'gradient_background.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  late Quote _currentQuote;

  @override
  void initState() {
    super.initState();
    _currentQuote = getRandomQuote();
  }

  void _showNextQuote() {
    setState(() {
      _currentQuote = getRandomQuote();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Цитата дня',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,
                    ),
                  ),
                  const SizedBox(height: 32),
                  QuoteCard(quote: _currentQuote),
                  const SizedBox(height: 32),
                  ElevatedButton.icon(
                    onPressed: _showNextQuote,
                    icon: const Icon(Icons.refresh),
                    label: const Text('следующая цитата'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE94560),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                        vertical: 16,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}