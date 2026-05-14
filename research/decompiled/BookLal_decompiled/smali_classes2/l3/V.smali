.class public final Ll3/V;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/v;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj3/r0;Ll3/t;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Ll3/V;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Lj3/r0;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "error must not be OK"

    invoke-static {v0, v1}, LZ2/l;->f(ZLjava/lang/String;)V

    .line 3
    iput-object p1, p0, Ll3/V;->b:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, Ll3/V;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll3/t1;Ll3/T0;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll3/V;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll3/V;->b:Ljava/lang/Object;

    iput-object p2, p0, Ll3/V;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(Lj3/h0;Lj3/f0;Lj3/g;[Lj3/B;)Ll3/s;
    .locals 5

    iget-object v0, p0, Ll3/V;->c:Ljava/lang/Object;

    iget-object v1, p0, Ll3/V;->b:Ljava/lang/Object;

    iget v2, p0, Ll3/V;->a:I

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lj3/g;->i:Lj3/g;

    const-string v2, "callOptions cannot be null"

    invoke-static {p3, v2}, LZ2/l;->j(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ll3/t1;

    invoke-virtual {v1}, Ll3/t1;->a()Lj3/B;

    move-result-object v1

    array-length v2, p4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v2, p4, v2

    sget-object v4, Ll3/b0;->o:Ll3/Z;

    if-ne v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v4, "lb tracer already assigned"

    invoke-static {v2, v4}, LZ2/l;->m(ZLjava/lang/String;)V

    array-length v2, p4

    sub-int/2addr v2, v3

    aput-object v1, p4, v2

    check-cast v0, Ll3/T0;

    invoke-interface {v0, p1, p2, p3, p4}, Ll3/v;->d(Lj3/h0;Lj3/f0;Lj3/g;[Lj3/B;)Ll3/s;

    move-result-object p1

    return-object p1

    :pswitch_0
    new-instance p1, Ll3/U;

    check-cast v1, Lj3/r0;

    check-cast v0, Ll3/t;

    invoke-direct {p1, v1, v0, p4}, Ll3/U;-><init>(Lj3/r0;Ll3/t;[Lj3/B;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final e()Lj3/J;
    .locals 2

    iget v0, p0, Ll3/V;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/V;->c:Ljava/lang/Object;

    check-cast v0, Ll3/T0;

    invoke-interface {v0}, Lj3/I;->e()Lj3/J;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not a real transport"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
