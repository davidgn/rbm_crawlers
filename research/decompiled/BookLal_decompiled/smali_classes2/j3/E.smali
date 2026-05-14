.class public final Lj3/E;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lj3/D;

.field public final c:J

.field public final d:Ll3/o0;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lj3/D;JLl3/o0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/E;->a:Ljava/lang/String;

    iput-object p2, p0, Lj3/E;->b:Lj3/D;

    iput-wide p3, p0, Lj3/E;->c:J

    iput-object p5, p0, Lj3/E;->d:Ll3/o0;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    instance-of v0, p1, Lj3/E;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lj3/E;

    iget-object v0, p1, Lj3/E;->a:Ljava/lang/String;

    iget-object v2, p0, Lj3/E;->a:Ljava/lang/String;

    invoke-static {v2, v0}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj3/E;->b:Lj3/D;

    iget-object v2, p1, Lj3/E;->b:Lj3/D;

    invoke-static {v0, v2}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lj3/E;->c:J

    iget-wide v4, p1, Lj3/E;->c:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0, v0}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj3/E;->d:Ll3/o0;

    iget-object p1, p1, Lj3/E;->d:Ll3/o0;

    invoke-static {v0, p1}, LW2/B;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Lj3/E;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lj3/E;->a:Ljava/lang/String;

    iget-object v2, p0, Lj3/E;->b:Lj3/D;

    const/4 v3, 0x0

    iget-object v4, p0, Lj3/E;->d:Ll3/o0;

    filled-new-array {v1, v2, v0, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, LS4/b;->F(Ljava/lang/Object;)LE4/d;

    move-result-object v0

    const-string v1, "description"

    iget-object v2, p0, Lj3/E;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "severity"

    iget-object v2, p0, Lj3/E;->b:Lj3/D;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "timestampNanos"

    iget-wide v2, p0, Lj3/E;->c:J

    invoke-virtual {v0, v2, v3, v1}, LE4/d;->c(JLjava/lang/String;)V

    const-string v1, "channelRef"

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "subchannelRef"

    iget-object v2, p0, Lj3/E;->d:Ll3/o0;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
