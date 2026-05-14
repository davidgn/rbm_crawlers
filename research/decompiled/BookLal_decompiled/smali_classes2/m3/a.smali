.class public final Lm3/a;
.super LU0/c;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:Lm3/c;


# direct methods
.method public constructor <init>(Lm3/c;I)V
    .locals 0

    iput p2, p0, Lm3/a;->c:I

    packed-switch p2, :pswitch_data_0

    iput-object p1, p0, Lm3/a;->d:Lm3/c;

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, LU0/c;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Ly3/b;->a()V

    return-void

    :pswitch_0
    iput-object p1, p0, Lm3/a;->d:Lm3/c;

    const/4 p2, 0x2

    invoke-direct {p0, p1, p2}, LU0/c;-><init>(Ljava/lang/Object;I)V

    invoke-static {}, Ly3/b;->a()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b()V
    .locals 6

    iget v0, p0, Lm3/a;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Ly3/b;->c()V

    sget-object v0, Ly3/b;->a:Ly3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LQ4/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    iget-object v1, p0, Lm3/a;->d:Lm3/c;

    iget-object v1, v1, Lm3/c;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lm3/a;->d:Lm3/c;

    iget-object v2, v2, Lm3/c;->b:LQ4/g;

    iget-wide v3, v2, LQ4/g;->b:J

    invoke-virtual {v0, v2, v3, v4}, LQ4/g;->o(LQ4/g;J)V

    iget-object v2, p0, Lm3/a;->d:Lm3/c;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lm3/c;->l:Z

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, v2, Lm3/c;->n:LQ4/b;

    iget-wide v2, v0, LQ4/g;->b:J

    invoke-virtual {v1, v0, v2, v3}, LQ4/b;->o(LQ4/g;J)V

    iget-object v0, p0, Lm3/a;->d:Lm3/c;

    iget-object v0, v0, Lm3/c;->n:LQ4/b;

    invoke-virtual {v0}, LQ4/b;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Ly3/b;->e()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-static {}, Ly3/b;->e()V

    throw v0

    :pswitch_0
    invoke-static {}, Ly3/b;->c()V

    sget-object v0, Ly3/b;->a:Ly3/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LQ4/g;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    :try_start_5
    iget-object v1, p0, Lm3/a;->d:Lm3/c;

    iget-object v1, v1, Lm3/c;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v2, p0, Lm3/a;->d:Lm3/c;

    iget-object v2, v2, Lm3/c;->b:LQ4/g;

    invoke-virtual {v2}, LQ4/g;->c()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, LQ4/g;->o(LQ4/g;J)V

    iget-object v2, p0, Lm3/a;->d:Lm3/c;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lm3/c;->f:Z

    iget v3, v2, Lm3/c;->r:I

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    iget-object v1, v2, Lm3/c;->n:LQ4/b;

    iget-wide v4, v0, LQ4/g;->b:J

    invoke-virtual {v1, v0, v4, v5}, LQ4/b;->o(LQ4/g;J)V

    iget-object v0, p0, Lm3/a;->d:Lm3/c;

    iget-object v0, v0, Lm3/c;->a:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iget-object v1, p0, Lm3/a;->d:Lm3/c;

    iget v2, v1, Lm3/c;->r:I

    sub-int/2addr v2, v3

    iput v2, v1, Lm3/c;->r:I

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    invoke-static {}, Ly3/b;->e()V

    return-void

    :catchall_2
    move-exception v1

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :goto_1
    invoke-static {}, Ly3/b;->e()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
