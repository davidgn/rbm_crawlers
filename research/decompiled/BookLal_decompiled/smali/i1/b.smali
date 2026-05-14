.class public final Li1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li1/r;
.implements Li1/a;
.implements Lt3/b;


# instance fields
.field public final a:Landroid/content/res/AssetManager;


# direct methods
.method public synthetic constructor <init>(Landroid/content/res/AssetManager;)V
    .locals 0

    iput-object p1, p0, Li1/b;->a:Landroid/content/res/AssetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Li1/b;->a:Landroid/content/res/AssetManager;

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Landroid/content/res/AssetManager;Ljava/lang/String;)Lc1/e;
    .locals 2

    new-instance v0, Lc1/k;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lc1/k;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;I)V

    return-object v0
.end method

.method public h(Li1/w;)Li1/q;
    .locals 2

    new-instance p1, Li1/c;

    iget-object v0, p0, Li1/b;->a:Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0, p0}, Li1/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
