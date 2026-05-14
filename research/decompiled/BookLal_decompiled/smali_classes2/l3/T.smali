.class public final Ll3/T;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Random;

.field public b:J

.field public c:D

.field public d:D

.field public e:J


# virtual methods
.method public final a()J
    .locals 8

    iget-wide v0, p0, Ll3/T;->e:J

    long-to-double v2, v0

    iget-wide v4, p0, Ll3/T;->c:D

    mul-double/2addr v4, v2

    double-to-long v4, v4

    iget-wide v6, p0, Ll3/T;->b:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Ll3/T;->e:J

    iget-wide v4, p0, Ll3/T;->d:D

    neg-double v6, v4

    mul-double/2addr v6, v2

    mul-double/2addr v4, v2

    cmpl-double v2, v4, v6

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, LZ2/l;->e(Z)V

    sub-double/2addr v4, v6

    iget-object v2, p0, Ll3/T;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method
