.class public final LN3/a;
.super Lz3/q;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Lz3/q;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lz3/q;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LN3/a;->a:I

    iput-object p1, p0, LN3/a;->b:Lz3/q;

    iput-object p2, p0, LN3/a;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final c(Lz3/r;)V
    .locals 3

    iget v0, p0, LN3/a;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LL3/i;

    iget-object v1, p0, LN3/a;->c:Ljava/lang/Object;

    check-cast v1, LG3/c;

    const/4 v2, 0x3

    invoke-direct {v0, v2, p1, v1}, LL3/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, LN3/a;->b:Lz3/q;

    invoke-virtual {p1, v0}, Lz3/q;->b(Lz3/r;)V

    return-void

    :pswitch_0
    new-instance v0, LD2/e;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p1, p0, LN3/a;->b:Lz3/q;

    invoke-virtual {p1, v0}, Lz3/q;->b(Lz3/r;)V

    return-void

    :pswitch_1
    new-instance v0, LD2/e;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p1, v2}, LD2/e;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p1, p0, LN3/a;->b:Lz3/q;

    invoke-virtual {p1, v0}, Lz3/q;->b(Lz3/r;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
