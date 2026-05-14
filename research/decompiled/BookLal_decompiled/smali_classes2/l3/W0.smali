.class public final Ll3/W0;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public b:Lm3/t;

.field public final synthetic c:Ll3/X0;


# direct methods
.method public constructor <init>(Ll3/X0;)V
    .locals 0

    iput-object p1, p0, Ll3/W0;->c:Ll3/X0;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Ll3/W0;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final write(I)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iget-object v1, p0, Ll3/W0;->b:Lm3/t;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 2
    iget v3, v1, Lm3/t;->b:I

    if-lez v3, :cond_0

    int-to-byte p1, p1

    .line 3
    iget-object v0, v1, Lm3/t;->a:LQ4/g;

    .line 4
    invoke-virtual {v0, p1}, LQ4/g;->E(I)V

    .line 5
    iget p1, v1, Lm3/t;->b:I

    sub-int/2addr p1, v2

    iput p1, v1, Lm3/t;->b:I

    .line 6
    iget p1, v1, Lm3/t;->c:I

    add-int/2addr p1, v2

    iput p1, v1, Lm3/t;->c:I

    return-void

    :cond_0
    int-to-byte p1, p1

    .line 7
    new-array v1, v2, [B

    aput-byte p1, v1, v0

    .line 8
    invoke-virtual {p0, v1, v0, v2}, Ll3/W0;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 4

    .line 9
    iget-object v0, p0, Ll3/W0;->b:Lm3/t;

    iget-object v1, p0, Ll3/W0;->a:Ljava/util/ArrayList;

    iget-object v2, p0, Ll3/W0;->c:Ll3/X0;

    if-nez v0, :cond_0

    .line 10
    iget-object v0, v2, Ll3/X0;->h:Ld3/a;

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Ld3/a;->o(I)Lm3/t;

    move-result-object v0

    iput-object v0, p0, Ll3/W0;->b:Lm3/t;

    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 13
    iget-object v0, p0, Ll3/W0;->b:Lm3/t;

    .line 14
    iget v0, v0, Lm3/t;->b:I

    .line 15
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 16
    iget-object v0, p0, Ll3/W0;->b:Lm3/t;

    .line 17
    iget v0, v0, Lm3/t;->c:I

    mul-int/lit8 v0, v0, 0x2

    .line 18
    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 19
    iget-object v3, v2, Ll3/X0;->h:Ld3/a;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ld3/a;->o(I)Lm3/t;

    move-result-object v0

    iput-object v0, p0, Ll3/W0;->b:Lm3/t;

    .line 21
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    :cond_1
    iget-object v3, p0, Ll3/W0;->b:Lm3/t;

    invoke-virtual {v3, p1, p2, v0}, Lm3/t;->a([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    return-void
.end method
