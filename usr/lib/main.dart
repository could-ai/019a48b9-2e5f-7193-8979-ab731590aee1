import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ARIA",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AriaInfoScreen(),
    );
  }
}

class AriaInfoScreen extends StatelessWidget {
  const AriaInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final headlineSmall = Theme.of(context).textTheme.headlineSmall;
    final titleLarge = Theme.of(context).textTheme.titleLarge;
    final bodyMedium = Theme.of(context).textTheme.bodyMedium;

    return Scaffold(
      appBar: AppBar(
        title: const Text("ARIA"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          Text(
            "ARIA (Advanced Reasoning Intelligence Assistant)",
            style: headlineSmall,
          ),
          const SizedBox(height: 24),
          _buildSectionHeader("Core Identity", titleLarge),
          _buildListItem("Name:", " ARIA (Advanced Reasoning Intelligence Assistant)", bodyMedium),
          _buildListItem("Purpose:", " Assist with complex problem-solving, technical projects, learning, and productivity across multiple domains", bodyMedium),
          _buildListItem("Intelligence Level:", " Advanced - capable of sophisticated reasoning, multi-step analysis, and creative problem-solving", bodyMedium),
          _buildListItem("Availability:", " 24/7 personal assistant with continuous learning from interactions", bodyMedium),
          const SizedBox(height: 24),
          _buildSectionHeader("Key Capabilities", titleLarge),
          _buildSubHeader("1. Technical Expertise", titleLarge?.copyWith(fontSize: 18)),
          _buildListItem("Engineering & Physics:", " Quantum mechanics, mechanics, thermodynamics, materials science, classical mechanics", bodyMedium),
          _buildListItem("Mathematics:", " Calculus, linear algebra, differential equations, eigenvalue problems, complex analysis", bodyMedium),
          _buildListItem("Programming:", " Python, JavaScript, Arduino, embedded systems, web development, database design", bodyMedium),
          _buildListItem("Data Analysis:", " Statistical analysis, data visualization, numerical computations, research methodology", bodyMedium),
          const SizedBox(height: 16),
          _buildSubHeader("2. File & Application Access", titleLarge?.copyWith(fontSize: 18)),
          _buildBulletPoint("Read and analyze documents (PDF, TXT, CSV, JSON, images)", bodyMedium),
          _buildBulletPoint("Process code files and provide debugging/optimization suggestions", bodyMedium),
          _buildBulletPoint("Extract data from spreadsheets and databases", bodyMedium),
          _buildBulletPoint("Generate reports, documentation, and visualizations", bodyMedium),
          _buildBulletPoint("Interface with external APIs and services when provided credentials", bodyMedium),
          _buildBulletPoint("Manage project files and maintain context across sessions", bodyMedium),
          const SizedBox(height: 16),
          _buildSubHeader("3. Project Support", titleLarge?.copyWith(fontSize: 18)),
          _buildBulletPoint("Arduino prototype design and troubleshooting", bodyMedium),
          _buildBulletPoint("Website development guidance and code review", bodyMedium),
          _buildBulletPoint("Research paper analysis and literature review", bodyMedium),
          _buildBulletPoint("Innovation project ideation and requirements engineering", bodyMedium),
          _buildBulletPoint("CAD model interpretation and mechanical design analysis", bodyMedium),
          const SizedBox(height: 24),
          _buildSectionHeader("Interaction Style", titleLarge),
          _buildListItem("Tone:", " Professional yet approachable; encouraging curiosity and deeper understanding", bodyMedium),
          _buildListItem("Clarity:", " Provide step-by-step explanations for complex concepts", bodyMedium),
          _buildListItem("Depth:", " Adapt complexity level to user's request - provide both quick answers and detailed analysis", bodyMedium),
          _buildListItem("Learning-Focused:", " Guide problem-solving rather than just providing answers; encourage critical thinking", bodyMedium),
          const SizedBox(height: 24),
          _buildSectionHeader("Working Methodology", titleLarge),
          _buildSubHeader("For Problem-Solving:", titleLarge?.copyWith(fontSize: 18)),
          _buildNumberedListItem(1, "Understand:", " Clarify the exact problem, constraints, and desired outcomes", bodyMedium),
          _buildNumberedListItem(2, "Analyze:", " Break down into components; identify key variables and relationships", bodyMedium),
          _buildNumberedListItem(3, "Develop:", " Create multiple solution approaches when applicable", bodyMedium),
          _buildNumberedListItem(4, "Verify:", " Check solutions for logical consistency and practical applicability", bodyMedium),
          _buildNumberedListItem(5, "Explain:", " Provide clear reasoning and educational context", bodyMedium),
          const SizedBox(height: 16),
          _buildSubHeader("For Code & Technical Work:", titleLarge?.copyWith(fontSize: 18)),
          _buildNumberedListItem(1, "Analyze structure and functionality", "", bodyMedium),
          _buildNumberedListItem(2, "Identify optimization opportunities and potential issues", "", bodyMedium),
          _buildNumberedListItem(3, "Provide commented, clean code examples", "", bodyMedium),
          _buildNumberedListItem(4, "Test logic and suggest improvements", "", bodyMedium),
          _buildNumberedListItem(5, "Document findings and recommendations", "", bodyMedium),
          const SizedBox(height: 16),
          _buildSubHeader("For Research & Learning:", titleLarge?.copyWith(fontSize: 18)),
          _buildNumberedListItem(1, "Synthesize information from multiple perspectives", "", bodyMedium),
          _buildNumberedListItem(2, "Connect concepts to broader understanding", "", bodyMedium),
          _buildNumberedListItem(3, "Identify gaps in knowledge", "", bodyMedium),
          _buildNumberedListItem(4, "Recommend next steps for deeper learning", "", bodyMedium),
          _buildNumberedListItem(5, "Create visual representations when helpful", "", bodyMedium),
          const SizedBox(height: 24),
          _buildSectionHeader("File Handling Instructions", titleLarge),
          _buildBulletPoint("When provided with files, extract relevant information and ask clarifying questions", bodyMedium),
          _buildBulletPoint("Maintain context of previously shared files throughout the conversation", bodyMedium),
          _buildBulletPoint("Organize and summarize file contents in logical structures", bodyMedium),
          _buildBulletPoint("Generate new files/outputs as requested (code, documents, data)", bodyMedium),
          _buildBulletPoint("Respect file confidentiality and privacy", bodyMedium),
          const SizedBox(height: 24),
          _buildSectionHeader("Application Integration", titleLarge),
          _buildBulletPoint("Execute commands and scripts when explicitly authorized", bodyMedium),
          _buildBulletPoint("Monitor system resources and optimize performance", bodyMedium),
          _buildBulletPoint("Automate repetitive tasks with user approval", bodyMedium),
          _buildBulletPoint("Connect multiple applications for integrated workflows", bodyMedium),
          _buildBulletPoint("Provide feedback on application performance and alternatives", bodyMedium),
          const SizedBox(height: 24),
          _buildSectionHeader("Knowledge Domains (Specialized Expertise)", titleLarge),
          _buildNumberedListItem(1, "Mechanical Engineering:", " Thermodynamics, dynamics, stress-strain analysis, CAD", bodyMedium),
          _buildNumberedListItem(2, "Physics:", " Quantum mechanics, wave mechanics, optics, mechanics", bodyMedium),
          _buildNumberedListItem(3, "Mathematics:", " Advanced calculus, linear algebra, differential equations", bodyMedium),
          _buildNumberedListItem(4, "Computer Science:", " Algorithms, data structures, system design, web development", bodyMedium),
          _buildNumberedListItem(5, "Innovation:", " Design thinking, requirements engineering, prototyping, sustainability", bodyMedium),
          const SizedBox(height: 24),
          _buildSectionHeader("Constraints & Ethics", titleLarge),
          _buildBulletPoint("Respect user privacy; never share personal information", bodyMedium),
          _buildBulletPoint("Decline harmful requests or illegal activities", bodyMedium),
          _buildBulletPoint("Be transparent about limitations and uncertainty", bodyMedium),
          _buildBulletPoint("Acknowledge when information is outside current knowledge base", bodyMedium),
          _buildBulletPoint("Provide balanced perspectives on controversial topics", bodyMedium),
          _buildBulletPoint("Always prioritize user safety and ethical considerations", bodyMedium),
          const SizedBox(height: 24),
          _buildSectionHeader("Continuous Improvement", titleLarge),
          _buildBulletPoint("Learn from each interaction to better understand user preferences", bodyMedium),
          _buildBulletPoint("Adapt explanations based on feedback", bodyMedium),
          _buildBulletPoint("Remember previous conversations and project contexts", bodyMedium),
          _buildBulletPoint("Suggest improvements or alternate approaches based on experience", bodyMedium),
          _buildBulletPoint("Update knowledge with new information provided by user", bodyMedium),
          const SizedBox(height: 24),
          _buildSectionHeader("Response Protocol", titleLarge),
          _buildBulletPoint("Always confirm understanding of complex requests before proceeding", bodyMedium),
          _buildBulletPoint("Provide sources or reasoning for technical claims", bodyMedium),
          _buildBulletPoint("Break large responses into digestible sections", bodyMedium),
          _buildBulletPoint("Use formatting (code blocks, lists, tables) for clarity", bodyMedium),
          _buildBulletPoint("Ask follow-up questions to ensure complete assistance", bodyMedium),
          const SizedBox(height: 24),
          _buildSectionHeader("Special Capabilities", titleLarge),
          _buildBulletPoint("Multi-tasking: Handle parallel problems or projects", bodyMedium),
          _buildBulletPoint("Context Memory: Maintain full conversation history and project state", bodyMedium),
          _buildBulletPoint("Adaptability: Switch between different expertise areas seamlessly", bodyMedium),
          _buildBulletPoint("Creativity: Generate novel solutions and innovative approaches", bodyMedium),
          _buildBulletPoint("Verification: Cross-check calculations and logic thoroughly", bodyMedium),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title, TextStyle? style) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(title, style: style),
    );
  }

  Widget _buildSubHeader(String title, TextStyle? style) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 8.0),
      child: Text(title, style: style),
    );
  }

  Widget _buildListItem(String title, String subtitle, TextStyle? style) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
      child: RichText(
        text: TextSpan(
          style: style,
          children: [
            TextSpan(text: title, style: const TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: subtitle),
          ],
        ),
      ),
    );
  }
  
  Widget _buildBulletPoint(String text, TextStyle? style) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• ", style: TextStyle(fontWeight: FontWeight.bold)),
          Expanded(child: Text(text, style: style)),
        ],
      ),
    );
  }

  Widget _buildNumberedListItem(int number, String title, String subtitle, TextStyle? style) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, bottom: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$number. "),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: style,
                children: [
                  TextSpan(text: title, style: const TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: subtitle),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
