.class public abstract LJ0/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "*"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, ""

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method

.method public static a(Landroid/webkit/WebView;)LK0/j;
    .locals 2

    new-instance v0, LK0/j;

    sget-object v1, LK0/n;->a:LK0/o;

    invoke-interface {v1, p0}, LK0/o;->createWebView(Landroid/webkit/WebView;)Lorg/chromium/support_lib_boundary/WebViewProviderBoundaryInterface;

    move-result-object p0

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, LK0/j;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    sget-object v0, LK0/m;->e:LK0/b;

    invoke-virtual {v0}, LK0/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LK0/n;->a:LK0/o;

    invoke-interface {v0}, LK0/o;->getStatics()Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/StaticsBoundaryInterface;->getVariationsHeader()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, LK0/m;->a()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
