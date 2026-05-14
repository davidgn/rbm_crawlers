.class public interface abstract Li1/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Li1/k;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Li1/i;

    invoke-direct {v0}, Li1/i;-><init>()V

    new-instance v1, Li1/k;

    iget-object v0, v0, Li1/i;->a:Ljava/util/Map;

    invoke-direct {v1, v0}, Li1/k;-><init>(Ljava/util/Map;)V

    sput-object v1, Li1/h;->a:Li1/k;

    return-void
.end method
