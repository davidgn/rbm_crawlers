.class public final LL3/g;
.super LL3/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lz3/h;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LL3/g;->b:I

    invoke-direct {p0, p1}, LL3/a;-><init>(Lz3/k;)V

    iput-object p2, p0, LL3/g;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Lz3/j;)V
    .locals 3

    iget v0, p0, LL3/g;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LL3/i;

    iget-object v1, p0, LL3/g;->c:Ljava/lang/Object;

    check-cast v1, Lz3/h;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p1, v1}, LL3/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, LL3/a;->a:Lz3/k;

    check-cast p1, Lz3/h;

    invoke-virtual {p1, v0}, Lz3/h;->b(Lz3/j;)V

    return-void

    :pswitch_0
    new-instance v0, LL3/p;

    iget-object v1, p0, LL3/g;->c:Ljava/lang/Object;

    check-cast v1, Lz3/p;

    invoke-direct {v0, p1, v1}, LL3/p;-><init>(Lz3/j;Lz3/p;)V

    iget-object p1, p0, LL3/a;->a:Lz3/k;

    check-cast p1, Lz3/h;

    invoke-virtual {p1, v0}, Lz3/h;->b(Lz3/j;)V

    return-void

    :pswitch_1
    new-instance v0, LL3/f;

    iget-object v1, p0, LL3/g;->c:Ljava/lang/Object;

    check-cast v1, LE3/d;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, LL3/f;-><init>(Lz3/j;LE3/d;I)V

    iget-object p1, p0, LL3/a;->a:Lz3/k;

    check-cast p1, Lz3/h;

    invoke-virtual {p1, v0}, Lz3/h;->b(Lz3/j;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
