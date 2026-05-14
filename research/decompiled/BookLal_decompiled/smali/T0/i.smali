.class public final LT0/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroidx/work/g;

.field public f:Landroidx/work/g;

.field public g:J

.field public h:J

.field public i:J

.field public j:Landroidx/work/c;

.field public k:I

.field public l:I

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:Z

.field public r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkSpec"

    invoke-static {v0}, Landroidx/work/n;->e(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, LT0/i;->b:I

    sget-object v1, Landroidx/work/g;->c:Landroidx/work/g;

    iput-object v1, p0, LT0/i;->e:Landroidx/work/g;

    iput-object v1, p0, LT0/i;->f:Landroidx/work/g;

    sget-object v1, Landroidx/work/c;->i:Landroidx/work/c;

    iput-object v1, p0, LT0/i;->j:Landroidx/work/c;

    iput v0, p0, LT0/i;->l:I

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, LT0/i;->m:J

    const-wide/16 v1, -0x1

    iput-wide v1, p0, LT0/i;->p:J

    iput v0, p0, LT0/i;->r:I

    iput-object p1, p0, LT0/i;->a:Ljava/lang/String;

    iput-object p2, p0, LT0/i;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 10

    iget v0, p0, LT0/i;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, LT0/i;->k:I

    if-lez v0, :cond_1

    iget v2, p0, LT0/i;->l:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-wide v1, p0, LT0/i;->m:J

    int-to-long v3, v0

    mul-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v2, p0, LT0/i;->m:J

    long-to-float v2, v2

    sub-int/2addr v0, v1

    invoke-static {v2, v0}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v1, v0

    :goto_0
    iget-wide v3, p0, LT0/i;->n:J

    const-wide/32 v5, 0x112a880

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v0, v3

    return-wide v0

    :cond_1
    invoke-virtual {p0}, LT0/i;->c()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, LT0/i;->n:J

    cmp-long v0, v5, v1

    if-nez v0, :cond_2

    iget-wide v5, p0, LT0/i;->g:J

    add-long/2addr v5, v3

    :cond_2
    iget-wide v3, p0, LT0/i;->i:J

    iget-wide v7, p0, LT0/i;->h:J

    cmp-long v9, v3, v7

    if-eqz v9, :cond_4

    if-nez v0, :cond_3

    const-wide/16 v0, -0x1

    mul-long v1, v3, v0

    :cond_3
    add-long/2addr v5, v7

    add-long/2addr v5, v1

    return-wide v5

    :cond_4
    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move-wide v1, v7

    :goto_1
    add-long/2addr v5, v1

    return-wide v5

    :cond_6
    iget-wide v3, p0, LT0/i;->n:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_7
    iget-wide v0, p0, LT0/i;->g:J

    add-long/2addr v3, v0

    return-wide v3
.end method

.method public final b()Z
    .locals 2

    sget-object v0, Landroidx/work/c;->i:Landroidx/work/c;

    iget-object v1, p0, LT0/i;->j:Landroidx/work/c;

    invoke-virtual {v0, v1}, Landroidx/work/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final c()Z
    .locals 4

    iget-wide v0, p0, LT0/i;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, LT0/i;

    if-eq v3, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    check-cast p1, LT0/i;

    iget-wide v2, p0, LT0/i;->g:J

    iget-wide v4, p1, LT0/i;->g:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    :cond_2
    iget-wide v2, p0, LT0/i;->h:J

    iget-wide v4, p1, LT0/i;->h:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    :cond_3
    iget-wide v2, p0, LT0/i;->i:J

    iget-wide v4, p1, LT0/i;->i:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    :cond_4
    iget v2, p0, LT0/i;->k:I

    iget v3, p1, LT0/i;->k:I

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-wide v2, p0, LT0/i;->m:J

    iget-wide v4, p1, LT0/i;->m:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    return v1

    :cond_6
    iget-wide v2, p0, LT0/i;->n:J

    iget-wide v4, p1, LT0/i;->n:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    return v1

    :cond_7
    iget-wide v2, p0, LT0/i;->o:J

    iget-wide v4, p1, LT0/i;->o:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    return v1

    :cond_8
    iget-wide v2, p0, LT0/i;->p:J

    iget-wide v4, p1, LT0/i;->p:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    return v1

    :cond_9
    iget-boolean v2, p0, LT0/i;->q:Z

    iget-boolean v3, p1, LT0/i;->q:Z

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    iget-object v2, p0, LT0/i;->a:Ljava/lang/String;

    iget-object v3, p1, LT0/i;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    iget v2, p0, LT0/i;->b:I

    iget v3, p1, LT0/i;->b:I

    if-eq v2, v3, :cond_c

    return v1

    :cond_c
    iget-object v2, p0, LT0/i;->c:Ljava/lang/String;

    iget-object v3, p1, LT0/i;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    iget-object v2, p0, LT0/i;->d:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, p1, LT0/i;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_e
    iget-object v2, p1, LT0/i;->d:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_0
    return v1

    :cond_f
    iget-object v2, p0, LT0/i;->e:Landroidx/work/g;

    iget-object v3, p1, LT0/i;->e:Landroidx/work/g;

    invoke-virtual {v2, v3}, Landroidx/work/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    :cond_10
    iget-object v2, p0, LT0/i;->f:Landroidx/work/g;

    iget-object v3, p1, LT0/i;->f:Landroidx/work/g;

    invoke-virtual {v2, v3}, Landroidx/work/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    :cond_11
    iget-object v2, p0, LT0/i;->j:Landroidx/work/c;

    iget-object v3, p1, LT0/i;->j:Landroidx/work/c;

    invoke-virtual {v2, v3}, Landroidx/work/c;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    :cond_12
    iget v2, p0, LT0/i;->l:I

    iget v3, p1, LT0/i;->l:I

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    iget v2, p0, LT0/i;->r:I

    iget p1, p1, LT0/i;->r:I

    if-ne v2, p1, :cond_14

    goto :goto_1

    :cond_14
    move v0, v1

    :goto_1
    return v0

    :cond_15
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, LT0/i;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LT0/i;->b:I

    invoke-static {v1}, Ls/e;->d(I)I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, LT0/i;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LT0/i;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LT0/i;->e:Landroidx/work/g;

    invoke-virtual {v1}, Landroidx/work/g;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, LT0/i;->f:Landroidx/work/g;

    invoke-virtual {v0}, Landroidx/work/g;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LT0/i;->g:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LT0/i;->h:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LT0/i;->i:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LT0/i;->j:Landroidx/work/c;

    invoke-virtual {v1}, Landroidx/work/c;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, LT0/i;->k:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget v0, p0, LT0/i;->l:I

    invoke-static {v0}, Ls/e;->d(I)I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LT0/i;->m:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LT0/i;->n:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LT0/i;->o:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, LT0/i;->p:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, LT0/i;->q:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LT0/i;->r:I

    invoke-static {v1}, Ls/e;->d(I)I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{WorkSpec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LT0/i;->a:Ljava/lang/String;

    const-string v2, "}"

    invoke-static {v0, v1, v2}, LC/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
