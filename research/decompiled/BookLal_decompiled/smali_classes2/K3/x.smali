.class public final LK3/x;
.super LK3/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LK3/B;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LK3/x;->c:I

    sget-object v0, LS3/a;->a:LS3/a;

    .line 2
    invoke-direct {p0, p1}, LK3/a;-><init>(Lz3/d;)V

    .line 3
    iput-object v0, p0, LK3/x;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lz3/d;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, LK3/x;->c:I

    invoke-direct {p0, p1}, LK3/a;-><init>(Lz3/d;)V

    iput-object p2, p0, LK3/x;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final e(Lz3/g;)V
    .locals 4

    iget v0, p0, LK3/x;->c:I

    packed-switch v0, :pswitch_data_0

    :try_start_0
    iget-object v0, p0, LK3/x;->d:Ljava/lang/Object;

    check-cast v0, LS3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, LK3/T;

    invoke-direct {v1, p1}, LR3/c;-><init>(Lz3/g;)V

    iput-object v0, v1, LR3/c;->b:Ljava/lang/Object;

    iget-object p1, p0, LK3/a;->b:Lz3/d;

    invoke-virtual {p1, v1}, Lz3/d;->d(Lz3/g;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, LS4/b;->D(Ljava/lang/Throwable;)V

    invoke-static {v0, p1}, LR3/d;->b(Ljava/lang/Throwable;Lz3/g;)V

    :goto_0
    return-void

    :pswitch_0
    instance-of v0, p1, LH3/a;

    iget-object v1, p0, LK3/x;->d:Ljava/lang/Object;

    check-cast v1, LK0/j;

    iget-object v2, p0, LK3/a;->b:Lz3/d;

    if-eqz v0, :cond_0

    new-instance v0, LK3/v;

    check-cast p1, LH3/a;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v3}, LK3/v;-><init>(LH3/a;Ljava/lang/Object;I)V

    invoke-virtual {v2, v0}, Lz3/d;->d(Lz3/g;)V

    goto :goto_1

    :cond_0
    new-instance v0, LK3/H;

    invoke-direct {v0, p1, v1}, LK3/H;-><init>(Lz3/g;LK0/j;)V

    invoke-virtual {v2, v0}, Lz3/d;->d(Lz3/g;)V

    :goto_1
    return-void

    :pswitch_1
    instance-of v0, p1, LH3/a;

    iget-object v1, p0, LK3/x;->d:Ljava/lang/Object;

    check-cast v1, LE3/d;

    iget-object v2, p0, LK3/a;->b:Lz3/d;

    if-eqz v0, :cond_1

    new-instance v0, LK3/v;

    check-cast p1, LH3/a;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v3}, LK3/v;-><init>(LH3/a;Ljava/lang/Object;I)V

    invoke-virtual {v2, v0}, Lz3/d;->d(Lz3/g;)V

    goto :goto_2

    :cond_1
    new-instance v0, LK3/w;

    invoke-direct {v0, p1, v1}, LK3/w;-><init>(Lz3/g;LE3/d;)V

    invoke-virtual {v2, v0}, Lz3/d;->d(Lz3/g;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
