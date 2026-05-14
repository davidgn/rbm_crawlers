.class public final LL3/j;
.super LL3/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:LE3/c;


# direct methods
.method public synthetic constructor <init>(Lz3/h;LE3/c;I)V
    .locals 0

    iput p3, p0, LL3/j;->b:I

    invoke-direct {p0, p1}, LL3/a;-><init>(Lz3/k;)V

    iput-object p2, p0, LL3/j;->c:LE3/c;

    return-void
.end method


# virtual methods
.method public final c(Lz3/j;)V
    .locals 3

    iget v0, p0, LL3/j;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LL3/q;

    iget-object v1, p0, LL3/j;->c:LE3/c;

    invoke-direct {v0, p1, v1}, LL3/q;-><init>(Lz3/j;LE3/c;)V

    iget-object p1, p0, LL3/a;->a:Lz3/k;

    check-cast p1, Lz3/h;

    invoke-virtual {p1, v0}, Lz3/h;->b(Lz3/j;)V

    return-void

    :pswitch_0
    new-instance v0, LJ3/d;

    iget-object v1, p0, LL3/j;->c:LE3/c;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, LJ3/d;-><init>(Lz3/j;Ljava/lang/Object;I)V

    iget-object p1, p0, LL3/a;->a:Lz3/k;

    check-cast p1, Lz3/h;

    invoke-virtual {p1, v0}, Lz3/h;->b(Lz3/j;)V

    return-void

    :pswitch_1
    new-instance v0, LL3/b;

    iget-object v1, p0, LL3/j;->c:LE3/c;

    invoke-direct {v0, p1, v1}, LL3/b;-><init>(Lz3/j;LE3/c;)V

    iget-object p1, p0, LL3/a;->a:Lz3/k;

    check-cast p1, Lz3/h;

    invoke-virtual {p1, v0}, Lz3/h;->b(Lz3/j;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
