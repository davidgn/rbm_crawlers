.class final Lcom/google/android/gms/internal/ads/zzgva;
.super Lcom/google/android/gms/internal/ads/zzgvz;
.source "SourceFile"


# static fields
.field static final zza:Lcom/google/android/gms/internal/ads/zzgva;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgva;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgva;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgva;->zza:Lcom/google/android/gms/internal/ads/zzgva;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxm;->zza:Lcom/google/android/gms/internal/ads/zzgvp;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgvz;-><init>(Lcom/google/android/gms/internal/ads/zzgvp;ILjava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public final synthetic zzu()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvu;->map:Lcom/google/android/gms/internal/ads/zzgvp;

    return-object v0
.end method
