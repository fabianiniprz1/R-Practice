Students <- read_csv("students.csv")
View(Students)

Students <- pivot_wider(
  Students,
  id_cols = student,
  names_from = attribute,
  values_from = value
)

Students$GPA <- as.numeric(Students$GPA)

Students|>
  group_by(major)|>
  summarise(GPA = mean(GPA))

