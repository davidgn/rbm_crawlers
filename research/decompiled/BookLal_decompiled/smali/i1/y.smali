.class public final Li1/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/r;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    iput p2, p0, Li1/y;->a:I

    iput-object p1, p0, Li1/y;->b:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Li1/w;)Li1/q;
    .locals 3

    iget v0, p0, Li1/y;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Li1/c;

    sget-object v0, Li1/B;->b:Li1/B;

    iget-object v1, p0, Li1/y;->b:Landroid/content/res/Resources;

    invoke-direct {p1, v1, v0}, Li1/c;-><init>(Landroid/content/res/Resources;Li1/q;)V

    return-object p1

    :pswitch_0
    new-instance v0, Li1/c;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p1, v1, v2}, Li1/w;->a(Ljava/lang/Class;Ljava/lang/Class;)Li1/q;

    move-result-object p1

    iget-object v1, p0, Li1/y;->b:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1}, Li1/c;-><init>(Landroid/content/res/Resources;Li1/q;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
