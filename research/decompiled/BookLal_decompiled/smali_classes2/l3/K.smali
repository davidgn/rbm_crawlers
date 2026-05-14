.class public final Ll3/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ll3/N;


# direct methods
.method public synthetic constructor <init>(Ll3/N;II)V
    .locals 0

    iput p3, p0, Ll3/K;->a:I

    iput-object p1, p0, Ll3/K;->c:Ll3/N;

    iput p2, p0, Ll3/K;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Ll3/K;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ll3/K;->c:Ll3/N;

    iget-object v0, v0, Ll3/N;->c:Ll3/s;

    iget v1, p0, Ll3/K;->b:I

    invoke-interface {v0, v1}, Ll3/s;->c(I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Ll3/K;->c:Ll3/N;

    iget-object v0, v0, Ll3/N;->c:Ll3/s;

    iget v1, p0, Ll3/K;->b:I

    invoke-interface {v0, v1}, Ll3/s;->m(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Ll3/K;->c:Ll3/N;

    iget-object v0, v0, Ll3/N;->c:Ll3/s;

    iget v1, p0, Ll3/K;->b:I

    invoke-interface {v0, v1}, Ll3/O1;->l(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
