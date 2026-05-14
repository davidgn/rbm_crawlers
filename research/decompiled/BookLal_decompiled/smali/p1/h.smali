.class public abstract Lp1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lb1/g;

.field public static final b:Lb1/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lb1/b;->c:Lb1/b;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DecodeFormat"

    invoke-static {v0, v1}, Lb1/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lb1/g;

    move-result-object v0

    sput-object v0, Lp1/h;->a:Lb1/g;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v1, "com.bumptech.glide.load.resource.gif.GifOptions.DisableAnimation"

    invoke-static {v0, v1}, Lb1/g;->a(Ljava/lang/Object;Ljava/lang/String;)Lb1/g;

    move-result-object v0

    sput-object v0, Lp1/h;->b:Lb1/g;

    return-void
.end method
