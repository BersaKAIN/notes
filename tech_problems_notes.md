- When you face math problems, always take extra attention. Consider negativity, fraction, decimal, overflow etc
- Be careful to use extended negative slice for arrays. Note the end of slice are excluded.
- Remember to discuss corner case outlier input with the interviewer.
- Calling modules like copy.deepcopy might introduce performance issue. Every call of the deepcopy function will involve a module lookup for the copy module and a module method lookup for the deepcopy method. Let alone the deepcopy method might call you objects deepcopy implementation.
- Be cautious about >= and >,  <= and <. Make some examples to test your assumptions.
- Sanity check whenever possible, remove unnecessary ones only after confirmed.
- Add some comments to your code to remind and state assumptions.
- Ask for common API when you need but cannot remember it.


# General Procedure

1. Rephrase and make sure you understand the problem. Give some examples of input (and BAD INPUT) and ask for the desired output.
2. Start with brute force approach and try to improve it. Give some insight about where does the improvement come from, like what properties of the assumptions are under-utilized.
3. Give the interviewer the opportunity to ask some questions.
4. Refine the solution.
5. Give some test cases, also demonstrate that you can think of some outlier input case.