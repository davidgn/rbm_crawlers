.class public final LU0/b;
.super LU0/c;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic d:LL0/l;


# direct methods
.method public synthetic constructor <init>(LL0/l;I)V
    .locals 0

    iput p2, p0, LU0/b;->c:I

    iput-object p1, p0, LU0/b;->d:LL0/l;

    invoke-direct {p0}, LU0/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    iget v0, p0, LU0/b;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LU0/b;->d:LL0/l;

    iget-object v1, v0, LL0/l;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lv0/h;->c()V

    :try_start_0
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object v2

    invoke-virtual {v2}, LT0/j;->f()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, LU0/c;->a(LL0/l;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Lv0/h;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lv0/h;->f()V

    return-void

    :goto_1
    invoke-virtual {v1}, Lv0/h;->f()V

    throw v0

    :pswitch_0
    iget-object v0, p0, LU0/b;->d:LL0/l;

    iget-object v1, v0, LL0/l;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lv0/h;->c()V

    :try_start_1
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->n()LT0/j;

    move-result-object v2

    invoke-virtual {v2}, LT0/j;->g()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, LU0/c;->a(LL0/l;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_1
    invoke-virtual {v1}, Lv0/h;->h()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v1}, Lv0/h;->f()V

    iget-object v1, v0, LL0/l;->c:Landroidx/work/b;

    iget-object v2, v0, LL0/l;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, LL0/l;->f:Ljava/util/List;

    invoke-static {v1, v2, v0}, LL0/d;->a(Landroidx/work/b;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    :goto_3
    invoke-virtual {v1}, Lv0/h;->f()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
