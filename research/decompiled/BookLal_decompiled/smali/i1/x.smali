.class public final Li1/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/r;
.implements Lq1/a;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/res/Resources;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/Resources;I)V
    .locals 0

    iput p2, p0, Li1/x;->a:I

    iput-object p1, p0, Li1/x;->b:Landroid/content/res/Resources;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Le1/A;Lb1/h;)Le1/A;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Ll1/c;

    iget-object v0, p0, Li1/x;->b:Landroid/content/res/Resources;

    invoke-direct {p2, v0, p1}, Ll1/c;-><init>(Landroid/content/res/Resources;Le1/A;)V

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method public h(Li1/w;)Li1/q;
    .locals 3

    iget v0, p0, Li1/x;->a:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Li1/c;

    const-class v1, Landroid/net/Uri;

    const-class v2, Ljava/io/InputStream;

    invoke-virtual {p1, v1, v2}, Li1/w;->a(Ljava/lang/Class;Ljava/lang/Class;)Li1/q;

    move-result-object p1

    iget-object v1, p0, Li1/x;->b:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1}, Li1/c;-><init>(Landroid/content/res/Resources;Li1/q;)V

    return-object v0

    :pswitch_0
    new-instance v0, Li1/c;

    const-class v1, Landroid/net/Uri;

    const-class v2, Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {p1, v1, v2}, Li1/w;->a(Ljava/lang/Class;Ljava/lang/Class;)Li1/q;

    move-result-object p1

    iget-object v1, p0, Li1/x;->b:Landroid/content/res/Resources;

    invoke-direct {v0, v1, p1}, Li1/c;-><init>(Landroid/content/res/Resources;Li1/q;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
