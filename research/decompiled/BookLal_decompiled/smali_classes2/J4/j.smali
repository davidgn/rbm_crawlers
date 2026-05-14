.class public final LJ4/j;
.super LF4/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:LJ4/o;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;LJ4/o;III)V
    .locals 0

    iput p5, p0, LJ4/j;->e:I

    iput-object p2, p0, LJ4/j;->f:LJ4/o;

    iput p3, p0, LJ4/j;->g:I

    iput p4, p0, LJ4/j;->h:I

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, LF4/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 5

    iget v0, p0, LJ4/j;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ4/j;->f:LJ4/o;

    :try_start_0
    iget v1, p0, LJ4/j;->g:I

    iget v2, p0, LJ4/j;->h:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "statusCode"

    invoke-static {v2, v3}, Le1/i;->k(ILjava/lang/String;)V

    iget-object v3, v0, LJ4/o;->B:LJ4/x;

    invoke-virtual {v3, v1, v2}, LJ4/x;->n(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v2, v1}, LJ4/o;->b(IILjava/io/IOException;)V

    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_0
    iget-object v0, p0, LJ4/j;->f:LJ4/o;

    iget-object v0, v0, LJ4/o;->p:LJ4/A;

    iget v1, p0, LJ4/j;->h:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "errorCode"

    invoke-static {v1, v0}, Le1/i;->k(ILjava/lang/String;)V

    iget-object v0, p0, LJ4/j;->f:LJ4/o;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, LJ4/j;->f:LJ4/o;

    iget-object v1, v1, LJ4/o;->D:Ljava/util/LinkedHashSet;

    iget v2, p0, LJ4/j;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :pswitch_1
    iget v0, p0, LJ4/j;->g:I

    iget v1, p0, LJ4/j;->h:I

    iget-object v2, p0, LJ4/j;->f:LJ4/o;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object v3, v2, LJ4/o;->B:LJ4/x;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v1, v4}, LJ4/x;->m(IIZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const/4 v1, 0x2

    invoke-virtual {v2, v1, v1, v0}, LJ4/o;->b(IILjava/io/IOException;)V

    :goto_1
    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
