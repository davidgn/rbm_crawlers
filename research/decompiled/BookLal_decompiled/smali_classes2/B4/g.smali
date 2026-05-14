.class public final LB4/g;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lk4/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, LB4/g;->a:I

    iput-object p1, p0, LB4/g;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, LB4/g;->a:I

    packed-switch v1, :pswitch_data_0

    check-cast p1, Lp4/c;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "<this>"

    iget-object v2, p0, LB4/g;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, p1, Lp4/a;->b:I

    add-int/2addr v1, v0

    iget p1, p1, Lp4/a;->a:I

    invoke-virtual {v2, p1, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_0
    iget-object v0, p0, LB4/g;->b:Ljava/lang/Object;

    check-cast v0, LZ3/c;

    if-ne p1, v0, :cond_0

    const-string p1, "(this Collection)"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_1
    check-cast p1, Ljava/lang/Throwable;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, LB4/g;->b:Ljava/lang/Object;

    check-cast v0, LX/F;

    iget-object v0, v0, LX/F;->f:Lw4/h;

    new-instance v1, LX/g;

    invoke-direct {v1, p1}, LX/g;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lw4/h;->d(Ljava/lang/Object;)V

    :goto_1
    sget-object p1, LX/F;->j:Ljava/lang/Object;

    iget-object v0, p0, LB4/g;->b:Ljava/lang/Object;

    check-cast v0, LX/F;

    monitor-enter p1

    :try_start_0
    sget-object v1, LX/F;->i:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, LX/F;->b()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    :pswitch_2
    check-cast p1, Ljava/io/IOException;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/i;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, LD4/c;->a:[B

    iget-object p1, p0, LB4/g;->b:Ljava/lang/Object;

    check-cast p1, LE4/i;

    iput-boolean v0, p1, LE4/i;->o:Z

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, LB4/g;->b:Ljava/lang/Object;

    check-cast p1, LB4/i;

    invoke-virtual {p1}, LB4/i;->d()V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
