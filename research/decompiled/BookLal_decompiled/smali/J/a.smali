.class public final LJ/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, LJ/a;->a:I

    iput-object p1, p0, LJ/a;->c:Ljava/lang/Object;

    iput p2, p0, LJ/a;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ILjava/lang/Throwable;)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, LJ/a;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string p3, "initCallbacks cannot be null"

    invoke-static {p1, p3}, LL4/l;->k(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, LJ/a;->c:Ljava/lang/Object;

    .line 5
    iput p2, p0, LJ/a;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, LJ/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LJ/a;->c:Ljava/lang/Object;

    check-cast v0, Lu2/c;

    iget v1, p0, LJ/a;->b:I

    invoke-virtual {v0, v1}, Lu2/c;->f(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, LJ/a;->c:Ljava/lang/Object;

    check-cast v0, Ll3/H0;

    iget-object v0, v0, Ll3/H0;->f:Lj3/k;

    iget v1, p0, LJ/a;->b:I

    invoke-virtual {v0, v1}, Lj3/k;->request(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, LJ/a;->c:Ljava/lang/Object;

    check-cast v0, Lm3/i;

    invoke-static {}, Ly3/b;->c()V

    sget-object v1, Ly3/b;->a:Ly3/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v1, v0, Ll3/a;->a:Ll3/V0;

    iget v2, p0, LJ/a;->b:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-lez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "numMessages must be > 0"

    invoke-static {v3, v4}, LZ2/l;->f(ZLjava/lang/String;)V

    invoke-virtual {v1}, Ll3/V0;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v3, v1, Ll3/V0;->r:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, v1, Ll3/V0;->r:J

    invoke-virtual {v1}, Ll3/V0;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-static {}, Ly3/b;->e()V

    goto :goto_2

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0, v1}, Lm3/i;->m(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    invoke-static {}, Ly3/b;->e()V

    throw v0

    :pswitch_2
    iget-object v0, p0, LJ/a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/material/datepicker/j;

    iget-object v0, v0, Lcom/google/android/material/datepicker/j;->m:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->B:Z

    if-eqz v1, :cond_2

    goto :goto_3

    :cond_2
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView;->r:Lu0/F;

    if-nez v1, :cond_3

    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_3
    iget v2, p0, LJ/a;->b:I

    invoke-virtual {v1, v0, v2}, Lu0/F;->v0(Landroidx/recyclerview/widget/RecyclerView;I)V

    :goto_3
    return-void

    :pswitch_3
    iget-object v0, p0, LJ/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, LJ/a;->b:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_4

    :goto_4
    if-ge v4, v1, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/text/h;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v4, v1, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/emoji2/text/h;

    invoke-virtual {v2}, Landroidx/emoji2/text/h;->a()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    return-void

    :pswitch_4
    iget-object v0, p0, LJ/a;->c:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/foreground/SystemForegroundService;

    iget-object v0, v0, Landroidx/work/impl/foreground/SystemForegroundService;->e:Landroid/app/NotificationManager;

    iget v1, p0, LJ/a;->b:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :pswitch_5
    iget-object v0, p0, LJ/a;->c:Ljava/lang/Object;

    check-cast v0, LC4/o;

    iget-object v0, v0, LC4/o;->b:Ljava/lang/Object;

    check-cast v0, LD/b;

    if-eqz v0, :cond_6

    iget v1, p0, LJ/a;->b:I

    invoke-virtual {v0, v1}, LD/b;->d(I)V

    :cond_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
