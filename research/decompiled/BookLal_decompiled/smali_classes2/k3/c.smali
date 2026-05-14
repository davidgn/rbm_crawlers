.class public final Lk3/c;
.super Lj3/z;
.source "SourceFile"


# instance fields
.field public final b:Lj3/W;

.field public c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "AndroidChannelBuilder"

    :try_start_0
    const-class v1, Lm3/h;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-class v2, Lj3/X;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v2, 0x0

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj3/X;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {v1}, Lj3/X;->b()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OkHttpChannelProvider.isAvailable() returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to construct OkHttpChannelProvider"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "Couldn\'t cast OkHttpChannelProvider to ManagedChannelProvider"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "Failed to find OkHttpChannelProvider"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Lj3/W;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lj3/z;-><init>(I)V

    iput-object p1, p0, Lk3/c;->b:Lj3/W;

    return-void
.end method


# virtual methods
.method public final a()Lj3/V;
    .locals 3

    new-instance v0, Lk3/b;

    iget-object v1, p0, Lk3/c;->b:Lj3/W;

    invoke-virtual {v1}, Lj3/W;->a()Lj3/V;

    move-result-object v1

    iget-object v2, p0, Lk3/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lk3/b;-><init>(Lj3/V;Landroid/content/Context;)V

    return-object v0
.end method
