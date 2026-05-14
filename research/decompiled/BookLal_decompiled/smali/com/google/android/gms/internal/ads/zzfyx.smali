.class public abstract Lcom/google/android/gms/internal/ads/zzfyx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfzj;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfzj;-><init>()V

    return-object v0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzgtb;Lcom/google/android/gms/internal/ads/zzgtb;Lcom/google/android/gms/internal/ads/zzfyz;)Lcom/google/android/gms/internal/ads/zzfzj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzgtb<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzgtb<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/android/gms/internal/ads/zzfyz;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzfzj;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzj;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfzj;-><init>(Lcom/google/android/gms/internal/ads/zzgtb;Lcom/google/android/gms/internal/ads/zzgtb;Lcom/google/android/gms/internal/ads/zzfyz;)V

    return-object v0
.end method

.method public static zzc(ILcom/google/android/gms/internal/ads/zzfyz;)Lcom/google/android/gms/internal/ads/zzfzj;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfzj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfyw;-><init>(I)V

    sget-object p0, Lcom/google/android/gms/internal/ads/zzfyv;->zza:Lcom/google/android/gms/internal/ads/zzfyv;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfzj;-><init>(Lcom/google/android/gms/internal/ads/zzgtb;Lcom/google/android/gms/internal/ads/zzgtb;Lcom/google/android/gms/internal/ads/zzfyz;)V

    return-object v0
.end method

.method public static synthetic zzd(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfyx;->zzg(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic zze()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfyx;->zzf()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic zzf()Ljava/lang/Integer;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic zzg(I)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
