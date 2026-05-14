.class public final LK3/h;
.super LK3/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:I

.field public final e:I

.field public final f:LE3/c;


# direct methods
.method public constructor <init>(LK3/B;Lcom/google/firebase/inappmessaging/internal/j;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LK3/h;->c:I

    .line 5
    invoke-direct {p0, p1}, LK3/a;-><init>(Lz3/d;)V

    .line 6
    iput-object p2, p0, LK3/h;->f:LE3/c;

    const/4 p1, 0x2

    .line 7
    iput p1, p0, LK3/h;->d:I

    const/4 p1, 0x1

    .line 8
    iput p1, p0, LK3/h;->e:I

    return-void
.end method

.method public constructor <init>(LK3/m;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LK3/h;->c:I

    sget-object v0, LG3/d;->a:Ld3/a;

    .line 1
    invoke-direct {p0, p1}, LK3/a;-><init>(Lz3/d;)V

    .line 2
    iput-object v0, p0, LK3/h;->f:LE3/c;

    const/4 p1, 0x3

    .line 3
    iput p1, p0, LK3/h;->d:I

    .line 4
    iput p2, p0, LK3/h;->e:I

    return-void
.end method


# virtual methods
.method public final e(Lz3/g;)V
    .locals 6

    iget v0, p0, LK3/h;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LK3/a;->b:Lz3/d;

    iget-object v1, p0, LK3/h;->f:LE3/c;

    check-cast v1, Ld3/a;

    invoke-static {v0, p1, v1}, LL4/d;->H(LT4/a;Lz3/g;LE3/c;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, LK3/z;

    iget v3, p0, LK3/h;->d:I

    iget v4, p0, LK3/h;->e:I

    invoke-direct {v2, p1, v1, v3, v4}, LK3/z;-><init>(Lz3/g;Ld3/a;II)V

    invoke-virtual {v0, v2}, Lz3/d;->d(Lz3/g;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, LK3/a;->b:Lz3/d;

    iget-object v1, p0, LK3/h;->f:LE3/c;

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/j;

    invoke-static {v0, p1, v1}, LL4/d;->H(LT4/a;Lz3/g;LE3/c;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    iget v2, p0, LK3/h;->e:I

    invoke-static {v2}, Ls/e;->d(I)I

    move-result v2

    iget v3, p0, LK3/h;->d:I

    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    new-instance v2, LK3/d;

    invoke-direct {v2, p1, v1, v3}, LK3/d;-><init>(Lz3/g;Lcom/google/firebase/inappmessaging/internal/j;I)V

    goto :goto_1

    :cond_2
    new-instance v2, LK3/c;

    invoke-direct {v2, p1, v1, v3, v4}, LK3/c;-><init>(Lz3/g;Lcom/google/firebase/inappmessaging/internal/j;IZ)V

    goto :goto_1

    :cond_3
    new-instance v2, LK3/c;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v1, v3, v4}, LK3/c;-><init>(Lz3/g;Lcom/google/firebase/inappmessaging/internal/j;IZ)V

    :goto_1
    invoke-virtual {v0, v2}, Lz3/d;->d(Lz3/g;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
