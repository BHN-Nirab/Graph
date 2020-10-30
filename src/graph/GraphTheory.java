package graph;

import java.util.*;

class Graph{
    boolean connection;
    int edgeWeight;
}

public class GraphTheory {

    static Scanner input = new Scanner(System.in);
    static int numberOfVertices;
    static Graph graph[][];

    static void initializeGraph(int numberOfVertices)
    {
        GraphTheory.numberOfVertices = numberOfVertices;
        graph = new Graph[numberOfVertices][numberOfVertices];

        for(int i=0; i<numberOfVertices; i++)
        {
            for(int j=0; j<numberOfVertices; j++)
                graph[i][j] = new Graph();
        }
    }

    static void initializeConnection(int vertices1, int vertices2, int edgeWeight)
    {
        if(graph!=null)
        {
            graph[vertices1][vertices2].connection = true;
            graph[vertices1][vertices2].edgeWeight = edgeWeight;
        }

        else
            System.out.println("Can't create connection!");
    }

    static void initializeConnection(int vertices1, int vertices2)
    {
        if(graph!=null)
        {
            graph[vertices1][vertices2].connection = true;
            graph[vertices1][vertices2].edgeWeight = 1;
        }

        else
            System.out.println("Can't create connection!");
    }

    static int menu()
    {
        System.out.println("0. Break");
        System.out.println("1. BFS");
        System.out.println("2. DFS");

        return input.nextInt();
    }

    static void DFS(){
        if(graph==null)
            return;

        Stack<Integer> stack = new Stack<Integer>();
        boolean[] isVisited = new boolean[numberOfVertices];

        stack.push(0);
        isVisited[0] = true;

        while(!stack.isEmpty())
        {
            int vertices = stack.pop();
            System.out.print(vertices + " -> ");

            for(int i=0; i<numberOfVertices; i++)
            {
                if(graph[vertices][i].connection && !isVisited[i])
                {
                    stack.push(i);
                    isVisited[i] = true;
                }
            }
        }

        System.out.println();
    }

    static void BFS(){

        if(graph==null)
            return;

        Queue<Integer> queue = new LinkedList<>();
        boolean[] isVisited = new boolean[numberOfVertices];

        queue.add(0);
        isVisited[0] = true;

        while(!queue.isEmpty())
        {
            int vertices = queue.peek();
            queue.remove();
            System.out.print(vertices + " -> ");

            for(int i=0; i<numberOfVertices; i++)
            {
                if(graph[vertices][i].connection && !isVisited[i])
                {
                    queue.add(i);
                    isVisited[i] = true;
                }
            }
        }

        System.out.println();
    }


    public static void main(String[] args) {

        System.out.print("Enter number of Vertices: ");
        initializeGraph(input.nextInt());

        System.out.println("Enter connection(vertices1 vertices2 edgeWeight)[-1 -1 -1 to stop]");

        while(true)
        {
            int vertices1, vertices2, edgeWeight;
            vertices1 = input.nextInt();
            vertices2 = input.nextInt();
            edgeWeight = input.nextInt();

            if(vertices1 == -1 && vertices2 == -1 && edgeWeight == -1)
                break;
            initializeConnection(vertices1, vertices2, edgeWeight);

        }

        while(true)
        {
            int ch = menu();

            if(ch == 0)
                break;

            else if(ch == 1)
                BFS();

            else if(ch == 2)
                DFS();


        }



    }

}
