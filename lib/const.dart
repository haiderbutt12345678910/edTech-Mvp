import 'package:flutter_application_assignmnetapp/Models/quizmodel.dart';

const equationList = [
  [
    r"""
  <p>Prove that \(\sqrt{\frac{\sec P + 1}{\sec P - 1}} = \csc P + \cot P\)</p>
""",
    r"""
  <p><strong>Proof:</strong></p>

  <ol>
    <li>Start with the left-hand side (LHS) of the equation:</li>
    <p>
    $$\text{LHS} = \sqrt{\frac{\sec P + 1}{\sec P - 1}}$$
    </p>

    <!-- Steps 2 to 17 (Simplify LHS) -->

    <li>Finally, we have simplified the LHS to: $$2\csc P$$</li>
  </ol>

  <p>Now, compare this result to the right-hand side (RHS) of the equation, which is $$\csc P + \cot P$$.</p>

  <p>Since LHS = $$2\csc P$$ and RHS = $$\csc P + \cot P$$, we have successfully proven the identity:</p>

  $$\sqrt{\frac{\sec P + 1}{\sec P - 1}} = \csc P + \cot P$$
"""
  ],
  [
    r"""
  <html>
    <p>If \(\alpha\) and \(\beta\) are the zeroes of the quadratic polynomial \(f(x) = x^2 - x - 2\),</p>

    <p>then the polynomial whose zeroes are \(\alpha^2 + 1\) and \(\beta^2 + 1\) is:</p>
  </html>
""",
    r"""
  <html>
    <p><strong>Solution:</strong></p>

    <ol>
      <li>Start with the given quadratic polynomial: \(f(x) = x^2 - x - 2\)</li>
      <li>Use Vieta's formulas to find the sum and product of the zeroes:
        <p>Sum of zeroes: \(\alpha + \beta = -\frac{b}{a} = -\frac{-1}{1} = 1\)</p>
        <p>Product of zeroes: \(\alpha\beta = \frac{c}{a} = \frac{-2}{1} = -2\)</p>
      </li>
      <li>Now, we want to find the polynomial whose zeroes are \(\alpha^2 + 1\) and \(\beta^2 + 1\).</li>
      <li>Use Vieta's formulas again:
        <p>The sum of the new zeroes is: \((\alpha^2 + 1) + (\beta^2 + 1) = \alpha^2 + \beta^2 + 2\)</p>
        <p>The product of the new zeroes is: \((\alpha^2 + 1)(\beta^2 + 1) = \alpha^4 + \alpha^2 + \beta^4 + \beta^2 + 1\)</p>
      </li>
      <li>Calculate \(\alpha^2 + \beta^2\) using the sum and product of the original zeroes:
        <p>\(\alpha^2 + \beta^2 = (\alpha + \beta)^2 - 2\alpha\beta = (1)^2 - 2(-2) = 1 + 4 = 5\)</p>
      </li>
      <li>Now, we can write the polynomial with the new zeroes using Vieta's formulas:
        <p>The polynomial is \(x^2 - (\text{sum of new zeroes})x + (\text{product of new zeroes})\):</p>
        <p>\(x^2 - (\alpha^2 + \beta^2 + 2)x + (\alpha^4 + \alpha^2 + \beta^4 + \beta^2 + 1)\)</p>
      </li>
      <li>Substitute the value of \(\alpha^2 + \beta^2\) and \(\alpha^4 + \alpha^2 + \beta^4 + \beta^2 + 1\):
        <p>\(x^2 - (5 + 2)x + (4 + 5 + 1)\)</p>
      </li>
      <li>Simplify the polynomial:
        <p>\(x^2 - 7x + 10\)</p>
      </li>
    </ol>

    <p>So, the polynomial whose zeroes are \(\alpha^2 + 1\) and \(\beta^2 + 1\) is \(x^2 - 7x + 10\).</p>
  </html>
"""
  ],
];

const gkList = [
  r"""Methyl orange is an indicator""",
  r"""Newton's second law deals with the inertia of an object """,
  r"""Plasmolysis in a plant cell is defined as breakdown (lysis) of plasma membrane in hypotonic medium""",
  r"""If the distance between the points \((3,4)\) and \((a,0)\) is \(4\), then the value of \(a\) is \(2\)""",
  r"""<p>Ammonia is found in many household products, such as window cleaners. It turns red litmus blue. What is its nature?</p>""",
  r"""Objects fall at the same rate because they are affected by the same gravitational force.""",
  r"""The physicist Neils Bohr proposed a model for the atom in which the electrons orbit the nucleus in fixed orbits"""
];

const question = [
  QuizModel(
      question: r"""
      A beam of light is incident through the holes on side A and emerges out of the hole on the other face of the box as shown in the figure. Which of the following could be inside the box?
    """,
      options: [
        r"Concave lens",
        r"Rectangular glass slab",
        r"Prism",
        r"Convex lens",
      ],
      correctIndex: 2,
      feedback: r"""
      The phenomenon described is typically seen when light passes through a prism, causing dispersion. Concave and convex lenses, as well as rectangular glass slabs, do not usually exhibit this behavior.
    """),
  QuizModel(
      question: r"""
      Calculate the current that flows through the 10 Ω resistor in the following circuit.
    """,
      options: [
        r"1.2 A",
        r"0.6 A",
        r"0.2 A",
        r"2.0 A",
      ],
      correctIndex: 1,
      feedback: r"""
      To calculate the current through the 10 Ω resistor, you can use Ohm's law, which states that V = IR, where V is voltage, I is current, and R is resistance. If the voltage across the 10 Ω resistor is known, you can calculate the current using this formula.
    """),
  QuizModel(
      question: r"""
      A student carries out an experiment and plots the V-I graph of three samples of nichrome wire with resistances R1, R2, and R3, respectively. Which of the following is true?
    """,
      options: [
        r"R1 = R2 = R3",
        r"R1 > R2 > R3",
        r"R3 > R2 > R1",
        r"R2 > R3 > R1",
      ],
      correctIndex: 1,
      feedback: r"""
      Based on the V-I graph, you can determine the resistance of the wire samples. The one with the highest resistance will have the steepest slope on the graph, indicating higher resistance. Therefore, R1 > R2 > R3.
    """),
  QuizModel(
      question: r"""
      If \(\alpha\) and \(\beta\) are the zeroes of the quadratic polynomial \(f(x) = x^2 - x - 2\), then the polynomial whose zeroes are \(\alpha^2 + 1\) and \(\beta^2 + 1\) is:
    """,
      options: [
        r"\(x^2 - 7x + 10\)",
        r"\(x^2 - 4x - 5\)",
        r"\(x^2 + 7x + 10\)",
        r"\(x^2 - 4x + 5\)",
      ],
      correctIndex: 0,
      feedback: r"""
      To find the polynomial with the new zeroes \(\alpha^2 + 1\) and \(\beta^2 + 1\), you can use Vieta's formulas. The correct polynomial is \(x^2 - 7x + 10\).
    """),
];
