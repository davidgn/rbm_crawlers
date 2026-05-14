.class public final Ll3/o1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll3/u1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ll3/o1;->a:I

    iput-object p1, p0, Ll3/o1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ll3/z1;)V
    .locals 1

    iget v0, p0, Ll3/o1;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Ll3/z1;->a:Ll3/s;

    iget-object v0, p0, Ll3/o1;->b:Ljava/lang/Object;

    check-cast v0, Lj3/x;

    invoke-interface {p1, v0}, Ll3/s;->h(Lj3/x;)V

    return-void

    :pswitch_0
    iget-object p1, p1, Ll3/z1;->a:Ll3/s;

    iget-object v0, p0, Ll3/o1;->b:Ljava/lang/Object;

    check-cast v0, Lj3/v;

    invoke-interface {p1, v0}, Ll3/s;->e(Lj3/v;)V

    return-void

    :pswitch_1
    iget-object p1, p1, Ll3/z1;->a:Ll3/s;

    iget-object v0, p0, Ll3/o1;->b:Ljava/lang/Object;

    check-cast v0, Lj3/o;

    invoke-interface {p1, v0}, Ll3/O1;->a(Lj3/o;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
