class TreeNode
    attr_accessor :val, :children

    def initialize(val)
        @val = val
        @children = []
    end
end

def bfs(root)
    queue = Queue.new
    queue.push(root)
    depth = 0

    while (!queue.empty?) do
        node = queue.pop
        puts "value: #{node.val}"
        node.children.each { |child| queue.push(child) }
    end
end

root = TreeNode.new(1)
root.children += [TreeNode.new(2), TreeNode.new(3)]
root.children[0].children += [TreeNode.new(4), TreeNode.new(5)]
root.children[1].children += [TreeNode.new(6), TreeNode.new(7)]
bfs(root)


