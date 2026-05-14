.class public final LJ3/f;
.super Lz3/a;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:LE3/c;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;LE3/c;I)V
    .locals 0

    iput p3, p0, LJ3/f;->a:I

    iput-object p1, p0, LJ3/f;->b:Ljava/lang/Object;

    iput-object p2, p0, LJ3/f;->c:LE3/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Lz3/b;)V
    .locals 3

    iget v0, p0, LJ3/f;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LL3/i;

    iget-object v1, p0, LJ3/f;->c:LE3/c;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, LL3/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lz3/b;->a(LB3/b;)V

    iget-object p1, p0, LJ3/f;->b:Ljava/lang/Object;

    check-cast p1, Lz3/h;

    invoke-virtual {p1, v0}, Lz3/h;->b(Lz3/j;)V

    return-void

    :pswitch_0
    new-instance v0, LB3/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LB3/c;-><init>(I)V

    invoke-interface {p1, v0}, Lz3/b;->a(LB3/b;)V

    new-instance v1, LJ2/e;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, v0, v2}, LJ2/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object p1, p0, LJ3/f;->b:Ljava/lang/Object;

    check-cast p1, LJ3/e;

    invoke-virtual {p1, v1}, Lz3/a;->d(Lz3/b;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
