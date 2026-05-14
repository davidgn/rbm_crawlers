.class public final LX/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw4/b;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LX/s;->a:I

    iput-object p1, p0, LX/s;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ld4/c;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, LX/s;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, LX/s;->b:Ljava/lang/Object;

    check-cast p2, Lkotlin/jvm/internal/m;

    iput-object p1, p2, Lkotlin/jvm/internal/m;->a:Ljava/lang/Object;

    new-instance p1, Lx4/a;

    invoke-direct {p1, p0}, Lx4/a;-><init>(LX/s;)V

    throw p1

    :pswitch_0
    instance-of v0, p2, LX/r;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LX/r;

    iget v1, v0, LX/r;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, LX/r;->b:I

    goto :goto_0

    :cond_0
    new-instance v0, LX/r;

    invoke-direct {v0, p0, p2}, LX/r;-><init>(LX/s;Ld4/c;)V

    :goto_0
    iget-object p2, v0, LX/r;->a:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, LX/r;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    check-cast p1, LX/G;

    instance-of p2, p1, LX/h;

    if-nez p2, :cond_7

    instance-of p2, p1, LX/g;

    if-nez p2, :cond_6

    instance-of p2, p1, LX/a;

    if-eqz p2, :cond_4

    check-cast p1, LX/a;

    iget-object p1, p1, LX/a;->a:Ljava/lang/Object;

    iput v3, v0, LX/r;->b:I

    iget-object p2, p0, LX/s;->b:Ljava/lang/Object;

    check-cast p2, Lw4/b;

    invoke-interface {p2, p1, v0}, Lw4/b;->b(Ljava/lang/Object;Ld4/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    sget-object v1, LY3/j;->a:LY3/j;

    :goto_2
    return-object v1

    :cond_4
    instance-of p1, p1, LX/H;

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This is a bug in DataStore. Please file a bug at: https://issuetracker.google.com/issues/new?component=907884&template=1466542"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, LB0/c;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, LB0/c;-><init>(I)V

    throw p1

    :cond_6
    check-cast p1, LX/g;

    iget-object p1, p1, LX/g;->a:Ljava/lang/Throwable;

    throw p1

    :cond_7
    check-cast p1, LX/h;

    iget-object p1, p1, LX/h;->a:Ljava/lang/Throwable;

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
