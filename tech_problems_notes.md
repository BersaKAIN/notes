- Be passionate about your resume, show your passion about CS and your projects.
- Why this company, why this position, why me.
- 


## Asking questions
show your interest in the team, the technology and possibly combine it with your experience.
team technologies
java / aws tech / elb / machine learning / backend database / red shift / dynamo




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
6. Give some comment for the variables you are naming


# Problem solving hints

## BFS
In order to work in a graph, we need some states resemble the vertices in a graph.
Cost is some time indicated, if not, we may use flood fill.


## Flood Fill

## Brute Force
Number or size of the problem is limited

## Backtrcking
Usually problem needs to enumerate all permutation of a configuration.

## DP
Bigger problem can be essily solved by some smaller problems.

## Hard Drill

## MaxFlow

## Optimal Pair Matching

## Linear Programming 

## 

# Problems By Techniche
## Recursion
- Base case is handled without recursion.
- Avoid infinite loop/ make sure it will end some time.

## Dynamic Programming
In general, problems can be solved using dynamic programming have some states. The larger states can be calculated easily using the smaller states.
In many several pointer problems, we need to identify the last in/out to build such tables.

- Beginner: The states chart is 1-D, examples are fibonacci sequence.

- Medium: The states chart is 2-D. Observation of the states are not trivial.

- Advanced
