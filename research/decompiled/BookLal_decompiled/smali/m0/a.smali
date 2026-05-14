.class public final Lm0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lm0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lm0/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lm0/a;->a:Lm0/a;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/b;->a()I

    move-result v0

    return v0
.end method
