.class public final Ll3/z0;
.super Lj3/B;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj3/r0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll3/z0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ll3/z0;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Ll3/z0;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lj3/r0;->l:Lj3/r0;

    const-string v1, "Panic! This is a bug!"

    .line 5
    invoke-virtual {v0, v1}, Lj3/r0;->h(Ljava/lang/String;)Lj3/r0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lj3/r0;->g(Ljava/lang/Throwable;)Lj3/r0;

    move-result-object p1

    .line 6
    sget-object v0, Lj3/N;->e:Lj3/N;

    .line 7
    invoke-virtual {p1}, Lj3/r0;->f()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "drop status shouldn\'t be OK"

    invoke-static {v0, v2}, LZ2/l;->f(ZLjava/lang/String;)V

    .line 8
    new-instance v0, Lj3/N;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, p1, v1}, Lj3/N;-><init>(Lj3/P;Ll3/t1;Lj3/r0;Z)V

    .line 9
    iput-object v0, p0, Ll3/z0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Ll3/f1;)Lj3/N;
    .locals 0

    iget p1, p0, Ll3/z0;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Ll3/z0;->b:Ljava/lang/Object;

    check-cast p1, Lj3/r0;

    invoke-static {p1}, Lj3/N;->a(Lj3/r0;)Lj3/N;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object p1, p0, Ll3/z0;->b:Ljava/lang/Object;

    check-cast p1, Lj3/N;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Ll3/z0;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, LE4/d;

    const-class v1, Ll3/z0;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, LE4/d;-><init>(Ljava/lang/String;)V

    const-string v1, "panicPickResult"

    iget-object v2, p0, Ll3/z0;->b:Ljava/lang/Object;

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
