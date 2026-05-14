.class public final Ll3/b1;
.super Lj3/B;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj3/B;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll3/b1;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll3/b1;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj3/N;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ll3/b1;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "result"

    invoke-static {p1, v0}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ll3/b1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Ll3/f1;)Lj3/N;
    .locals 3

    iget v0, p0, Ll3/b1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/b1;->b:Ljava/lang/Object;

    check-cast v0, Lj3/B;

    invoke-virtual {v0, p1}, Lj3/B;->c(Ll3/f1;)Lj3/N;

    move-result-object p1

    iget-object v0, p1, Lj3/N;->a:Lj3/P;

    if-eqz v0, :cond_0

    new-instance p1, Ll3/t1;

    invoke-virtual {v0}, Lj3/P;->c()Lj3/b;

    move-result-object v1

    sget-object v2, Ls3/l;->j:Lj3/a;

    iget-object v1, v1, Lj3/b;->a:Ljava/util/IdentityHashMap;

    invoke-virtual {v1, v2}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls3/e;

    invoke-direct {p1, p0, v1}, Ll3/t1;-><init>(Ll3/b1;Ls3/e;)V

    invoke-static {v0, p1}, Lj3/N;->b(Lj3/P;Ll3/t1;)Lj3/N;

    move-result-object p1

    :cond_0
    return-object p1

    :pswitch_0
    iget-object p1, p0, Ll3/b1;->b:Ljava/lang/Object;

    check-cast p1, Lj3/N;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Ll3/b1;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, LE4/d;

    const-class v1, Ll3/b1;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LE4/d;-><init>(Ljava/lang/String;)V

    const-string v1, "result"

    iget-object v2, p0, Ll3/b1;->b:Ljava/lang/Object;

    check-cast v2, Lj3/N;

    invoke-virtual {v0, v2, v1}, LE4/d;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, LE4/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
