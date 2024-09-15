import 'package:geminiapp/Core/utils/loggers.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class ApiService {
  final String apiKey;
  final String modelVersion;

  ApiService({
    required this.apiKey,
    this.modelVersion = 'gemini-pro',
  });

  Future<String?> generateContent(String prompt) async {
    try {
      final model = GenerativeModel(
        model: modelVersion,
        apiKey: apiKey,
      );

      final response = await model.generateContent([Content.text(prompt)]);

      return response.text;
    } catch (e) {
      AppLogger.print('Error generating content: $e');
      return null;
    }
  }
}
