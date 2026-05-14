.class public final LB4/b;
.super Lkotlin/jvm/internal/j;
.source "SourceFile"

# interfaces
.implements Lk4/l;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:LB4/d;

.field public final synthetic c:LB4/c;


# direct methods
.method public synthetic constructor <init>(LB4/d;LB4/c;I)V
    .locals 0

    iput p3, p0, LB4/b;->a:I

    iput-object p1, p0, LB4/b;->b:LB4/d;

    iput-object p2, p0, LB4/b;->c:LB4/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/j;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LB4/b;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Throwable;

    sget-object p1, LB4/d;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v0, p0, LB4/b;->c:LB4/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, LB4/b;->b:LB4/d;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, LB4/d;->b(Ljava/lang/Object;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :pswitch_0
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, LB4/b;->c:LB4/c;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    iget-object v0, p0, LB4/b;->b:LB4/d;

    invoke-virtual {v0, p1}, LB4/d;->b(Ljava/lang/Object;)V

    sget-object p1, LY3/j;->a:LY3/j;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
