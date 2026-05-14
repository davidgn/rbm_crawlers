.class public abstract Lh3/F;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/StringBuilder;

.field public static final b:LQ4/j;

.field public static final c:LQ4/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lh3/F;->a:Ljava/lang/StringBuilder;

    sget-object v0, LQ4/j;->d:LQ4/j;

    const-string v0, "RIFF"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object v0

    sput-object v0, Lh3/F;->b:LQ4/j;

    const-string v0, "WEBP"

    invoke-static {v0}, Lz2/e;->l(Ljava/lang/String;)LQ4/j;

    move-result-object v0

    sput-object v0, Lh3/F;->c:LQ4/j;

    return-void
.end method
