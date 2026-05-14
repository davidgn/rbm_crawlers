.class public final Lm3/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm3/n;

.field public final b:Lm3/d;

.field public c:I

.field public final d:Lm3/v;


# direct methods
.method public constructor <init>(Lm3/n;Lm3/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3/w;->a:Lm3/n;

    iput-object p2, p0, Lm3/w;->b:Lm3/d;

    const p1, 0xffff

    iput p1, p0, Lm3/w;->c:I

    new-instance p2, Lm3/v;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, p1, v1}, Lm3/v;-><init>(Lm3/w;IILm3/u;)V

    iput-object p2, p0, Lm3/w;->d:Lm3/v;

    return-void
.end method


# virtual methods
.method public final a(ZLm3/v;LQ4/g;Z)V
    .locals 6

    const-string v0, "source"

    invoke-static {p3, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p2, Lm3/v;->c:I

    iget-object v1, p2, Lm3/v;->g:Lm3/w;

    iget-object v1, v1, Lm3/w;->d:Lm3/v;

    iget v1, v1, Lm3/v;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p2, Lm3/v;->a:LQ4/g;

    iget-wide v2, v1, LQ4/g;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget-wide v4, p3, LQ4/g;->b:J

    long-to-int v4, v4

    if-nez v2, :cond_1

    if-lt v0, v4, :cond_1

    invoke-virtual {p2, p3, v4, p1}, Lm3/v;->b(LQ4/g;IZ)V

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    if-lez v0, :cond_2

    invoke-virtual {p2, p3, v0, v3}, Lm3/v;->b(LQ4/g;IZ)V

    :cond_2
    iget-wide v2, p3, LQ4/g;->b:J

    long-to-int v0, v2

    int-to-long v2, v0

    invoke-virtual {v1, p3, v2, v3}, LQ4/g;->o(LQ4/g;J)V

    iget-boolean p3, p2, Lm3/v;->f:Z

    or-int/2addr p1, p3

    iput-boolean p1, p2, Lm3/v;->f:Z

    :goto_1
    if-eqz p4, :cond_3

    :try_start_0
    iget-object p1, p0, Lm3/w;->b:Lm3/d;

    invoke-virtual {p1}, Lm3/d;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    :goto_2
    return-void
.end method

.method public final b(Lm3/v;I)V
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lm3/w;->d:Lm3/v;

    invoke-virtual {p1, p2}, Lm3/v;->a(I)I

    invoke-virtual {p0}, Lm3/w;->c()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lm3/v;->a(I)I

    new-instance p2, Landroidx/work/n;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lm3/v;->c:I

    iget-object v1, p1, Lm3/v;->g:Lm3/w;

    iget-object v1, v1, Lm3/w;->d:Lm3/v;

    iget v1, v1, Lm3/v;->c:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lm3/v;->c(ILandroidx/work/n;)V

    iget p1, p2, Landroidx/work/n;->a:I

    if-lez p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lm3/w;->b:Lm3/d;

    invoke-virtual {p1}, Lm3/d;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 13

    iget-object v0, p0, Lm3/w;->a:Lm3/n;

    invoke-virtual {v0}, Lm3/n;->j()[Lm3/v;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    iget-object v2, p0, Lm3/w;->d:Lm3/v;

    iget v2, v2, Lm3/v;->c:I

    array-length v3, v1

    :goto_0
    const/4 v4, 0x0

    if-lez v3, :cond_3

    if-lez v2, :cond_3

    int-to-float v5, v2

    int-to-float v6, v3

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    move v6, v4

    move v7, v6

    :goto_1
    if-ge v7, v3, :cond_2

    if-lez v2, :cond_2

    aget-object v8, v1, v7

    iget v9, v8, Lm3/v;->c:I

    iget-object v10, v8, Lm3/v;->a:LQ4/g;

    iget-wide v11, v10, LQ4/g;->b:J

    long-to-int v11, v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v11, v8, Lm3/v;->d:I

    sub-int/2addr v9, v11

    invoke-static {v9, v5}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-lez v9, :cond_0

    iget v11, v8, Lm3/v;->d:I

    add-int/2addr v11, v9

    iput v11, v8, Lm3/v;->d:I

    sub-int/2addr v2, v9

    :cond_0
    iget v9, v8, Lm3/v;->c:I

    iget-wide v10, v10, LQ4/g;->b:J

    long-to-int v10, v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    iget v10, v8, Lm3/v;->d:I

    sub-int/2addr v9, v10

    if-lez v9, :cond_1

    add-int/lit8 v9, v6, 0x1

    aput-object v8, v1, v6

    move v6, v9

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    move v3, v6

    goto :goto_0

    :cond_3
    new-instance v1, Landroidx/work/n;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0}, Lm3/n;->j()[Lm3/v;

    move-result-object v0

    array-length v2, v0

    move v3, v4

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v5, v0, v3

    iget v6, v5, Lm3/v;->d:I

    invoke-virtual {v5, v6, v1}, Lm3/v;->c(ILandroidx/work/n;)V

    iput v4, v5, Lm3/v;->d:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget v0, v1, Landroidx/work/n;->a:I

    if-lez v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lm3/w;->b:Lm3/d;

    invoke-virtual {v0}, Lm3/d;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :goto_3
    return-void
.end method
