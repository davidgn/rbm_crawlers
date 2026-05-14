.class public final LM3/c;
.super LM3/a;
.source "SourceFile"


# instance fields
.field public final synthetic b:I

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lz3/l;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LM3/c;->b:I

    invoke-direct {p0, p1}, LM3/a;-><init>(Lz3/l;)V

    iput-object p2, p0, LM3/c;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c(Lz3/m;)V
    .locals 3

    iget v0, p0, LM3/c;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LE4/d;

    iget-object v1, p0, LM3/c;->c:Ljava/lang/Object;

    check-cast v1, LM3/n;

    invoke-direct {v0, p1, v1}, LE4/d;-><init>(Lz3/m;LM3/n;)V

    iget-object v1, v0, LE4/d;->e:Ljava/lang/Object;

    check-cast v1, LB3/c;

    invoke-interface {p1, v1}, Lz3/m;->a(LB3/b;)V

    iget-object p1, p0, LM3/a;->a:Lz3/l;

    invoke-virtual {p1, v0}, Lz3/l;->b(Lz3/m;)V

    return-void

    :pswitch_0
    new-instance v0, LM3/f;

    iget-object v1, p0, LM3/c;->c:Ljava/lang/Object;

    check-cast v1, LE3/c;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, LM3/f;-><init>(Lz3/m;Ljava/lang/Object;I)V

    iget-object p1, p0, LM3/a;->a:Lz3/l;

    invoke-virtual {p1, v0}, Lz3/l;->b(Lz3/m;)V

    return-void

    :pswitch_1
    new-instance v0, LM3/j;

    iget-object v1, p0, LM3/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/s;

    invoke-direct {v0, p1, v1}, LM3/j;-><init>(Lz3/m;Lcom/google/firebase/inappmessaging/internal/s;)V

    iget-object p1, p0, LM3/a;->a:Lz3/l;

    invoke-virtual {p1, v0}, Lz3/l;->b(Lz3/m;)V

    return-void

    :pswitch_2
    new-instance v0, LM3/f;

    iget-object v1, p0, LM3/c;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/firebase/inappmessaging/internal/t;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, LM3/f;-><init>(Lz3/m;Ljava/lang/Object;I)V

    iget-object p1, p0, LM3/a;->a:Lz3/l;

    invoke-virtual {p1, v0}, Lz3/l;->b(Lz3/m;)V

    return-void

    :pswitch_3
    new-instance v0, LM3/b;

    iget-object v1, p0, LM3/c;->c:Ljava/lang/Object;

    check-cast v1, LG3/b;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, LM3/b;-><init>(Ljava/lang/Object;LG3/b;I)V

    iget-object p1, p0, LM3/a;->a:Lz3/l;

    invoke-virtual {p1, v0}, Lz3/l;->b(Lz3/m;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
