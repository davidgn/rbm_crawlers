.class public final synthetic Lcom/google/android/gms/internal/ads/zzavg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzavg;

.field public static final synthetic zzb:Lcom/google/android/gms/internal/ads/zzavg;


# instance fields
.field private final synthetic zzc:I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzavg;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavg;->zzb:Lcom/google/android/gms/internal/ads/zzavg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzavg;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzavg;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzavg;->zza:Lcom/google/android/gms/internal/ads/zzavg;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzc:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzc:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzavw;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzavw;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzavj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzavj;-><init>()V

    return-object v0
.end method
