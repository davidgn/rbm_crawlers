.class public final Ll3/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:LK2/g;


# direct methods
.method public constructor <init>(IJLjava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ll3/d0;->a:I

    iput-wide p2, p0, Ll3/d0;->b:J

    sget p1, LK2/g;->c:I

    instance-of p1, p4, LK2/g;

    if-eqz p1, :cond_0

    instance-of p1, p4, Ljava/util/SortedSet;

    if-nez p1, :cond_0

    move-object p1, p4

    check-cast p1, LK2/g;

    invoke-virtual {p1}, LK2/b;->l()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p4}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    array-length p2, p1

    invoke-static {p2, p1}, LK2/g;->n(I[Ljava/lang/Object;)LK2/g;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Ll3/d0;->c:LK2/g;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Ll3/d0;

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Ll3/d0;

    iget v2, p0, Ll3/d0;->a:I

    iget v3, p1, Ll3/d0;->a:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Ll3/d0;->b:J

    iget-wide v4, p1, Ll3/d0;->b:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Ll3/d0;->c:LK2/g;

    iget-object p1, p1, Ll3/d0;->c:LK2/g;

    invoke-static {v2, p1}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Ll3/d0;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-wide v1, p0, Ll3/d0;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Ll3/d0;->c:LK2/g;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    iget v1, p0, Ll3/d0;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "maxAttempts"

    invoke-virtual {v0, v2, v1}, LE4/d;->f(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "hedgingDelayNanos"

    iget-wide v2, p0, Ll3/d0;->b:J

    invoke-virtual {v0, v2, v3, v1}, LE4/d;->c(JLjava/lang/String;)V

    iget-object v1, p0, Ll3/d0;->c:LK2/g;

    const-string v2, "nonFatalStatusCodes"

    invoke-virtual {v0, v1, v2}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
