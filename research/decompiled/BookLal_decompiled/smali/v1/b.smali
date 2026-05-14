.class public abstract Lv1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/d;


# instance fields
.field private final height:I

.field private request:Lu1/b;

.field private final width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    invoke-static {v0, v0}, Ly1/k;->h(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iput v0, p0, Lv1/b;->width:I

    iput v0, p0, Lv1/b;->height:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: -2147483648 and height: -2147483648"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getRequest()Lu1/b;
    .locals 1

    iget-object v0, p0, Lv1/b;->request:Lu1/b;

    return-object v0
.end method

.method public final getSize(Lv1/c;)V
    .locals 2

    iget v0, p0, Lv1/b;->width:I

    iget v1, p0, Lv1/b;->height:I

    check-cast p1, Lu1/e;

    invoke-virtual {p1, v0, v1}, Lu1/e;->k(II)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public final removeCallback(Lv1/c;)V
    .locals 0

    return-void
.end method

.method public final setRequest(Lu1/b;)V
    .locals 0

    iput-object p1, p0, Lv1/b;->request:Lu1/b;

    return-void
.end method
