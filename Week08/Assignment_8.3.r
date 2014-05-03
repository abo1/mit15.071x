edges = read.csv("edges.csv")
users = read.csv("users.csv")
str(users)
146/59
schoolers = subset(users, !is.na(users$school))
table(users$school)
schoolers = subset(users, users$school != "")
str(schoolers)
table(schoolers$locale)
table(userslocale)
table(users$locale)
table(users$gender, users$school)
146*2
292/59
table(users$school, users$gender)
library(igraph)
?graph.data.frame
g = graph.data.frame(users, directed = FALSE, vertices = edges)
g = graph.data.frame(users$id, directed = FALSE, vertices = edges)
g = graph.data.frame(edges, directed = FALSE, vertices = users)
g
plot(g, vertex.size=5, vertex.label=NA)
degree(g)
degree(g) > 10
sum(degree(g) > 10)
sum(degree(g) >= 10)
V(g)$size = degree(g)/2+2
plot(g, vertex.label=NA)
max(V(g)$size)
min(V(g)$size)
V(g)$color = "black"
V(g)$color[V(g)$gender == "A"] = "red"
V(g)$color[V(g)$gender == "B"] = "gray"
plot(g, vertex.label=NA)
V(g)$color = "black"
V(g)$color[V(g)$school == "A"] = "red"
V(g)$color[V(g)$school == "AB"] = "gray"
plot(g, vertex.label=NA)
table(users$school)
V(g)$color = "black"
V(g)$color[V(g)$locale == "A"] = "red"
V(g)$color[V(g)$locale == "B"] = "gray"
plot(g, vertex.label=NA)
?plot
plot.igraph
?plot.igraph
plot.igraph(g, vertex.label=NA)
?igraph.plotting
plot.igraph(g, vertex.label=NA, edge.size=2)
plot.igraph(g, vertex.label=NA, arrow.size=2)
plot.igraph(g, vertex.label=NA, width=2)
plot.igraph(g, vertex.label=NA, edges.width=2)
plot.igraph(g, vertex.label=NA, edge.width=2)
plot.igraph(g, vertex.label=NA, edge.width=1)
plot.igraph(g, vertex.label=NA, edge.width=1.5)
plot.igraph(g, vertex.label=NA, edge.width=22)
?rglplot
