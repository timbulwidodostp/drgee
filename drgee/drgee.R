# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Fit Doubly Robust Weighted Generalized Estimating (Estimation) Equations Use drgee With (In) R Software
install.packages("drgee")
library("drgee")
drgee = read.csv("https://raw.githubusercontent.com/timbulwidodostp/drgee/main/drgee/drgee.csv",sep = ";")
# Estimation Fit Doubly Robust Weighted Generalized Estimating (Estimation) Equations Use drgee With (In) R Software
drgee_1 <- drgee(oformula = wages~education + age + language, exposure = "sex", estimation.method = "o", data = drgee)
summary(drgee_1)
drgee_2 <- drgee(oformula = wages~education + age + language, exposure = "sex", iaformula = ~education, olink = "log", estimation.method = "o", data = drgee)
summary(drgee_2)
drgee_3 <- drgee(oformula = resp~age,eformula = smoke~age, olink = "logit",elink = "logit", estimation.method = "dr", data = drgee, clusterid = "id")
summary(drgee_3)
# Fit Doubly Robust Weighted Generalized Estimating (Estimation) Equations Use drgee With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished
