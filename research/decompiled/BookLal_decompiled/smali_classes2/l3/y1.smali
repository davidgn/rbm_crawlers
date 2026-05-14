.class public final Ll3/y1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ll3/z1;

.field public final synthetic c:Ll3/R1;


# direct methods
.method public synthetic constructor <init>(Ll3/R1;Ll3/z1;I)V
    .locals 0

    iput p3, p0, Ll3/y1;->a:I

    iput-object p1, p0, Ll3/y1;->c:Ll3/R1;

    iput-object p2, p0, Ll3/y1;->b:Ll3/z1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ll3/y1;->c:Ll3/R1;

    iget v1, p0, Ll3/y1;->a:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    sget-object v1, Ll3/B0;->E:Lj3/a0;

    iget-object v1, p0, Ll3/y1;->b:Ll3/z1;

    invoke-virtual {v0, v1}, Ll3/B0;->u(Ll3/z1;)V

    return-void

    :pswitch_0
    iget-object v0, v0, Ll3/R1;->c:Ljava/lang/Object;

    check-cast v0, Ll3/B0;

    iget-object v0, v0, Ll3/B0;->b:Ljava/util/concurrent/Executor;

    new-instance v1, LA2/h;

    const/16 v2, 0x1a

    invoke-direct {v1, p0, v2}, LA2/h;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
