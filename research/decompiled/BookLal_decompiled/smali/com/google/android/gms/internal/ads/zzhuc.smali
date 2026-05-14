.class final synthetic Lcom/google/android/gms/internal/ads/zzhuc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhmi;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhuc;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhuc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhuc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhuc;->zza:Lcom/google/android/gms/internal/ads/zzhuc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhco;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhtz;

    sget v0, Lcom/google/android/gms/internal/ads/zzhwy;->zzd:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjw;->zza()Ljava/security/Provider;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhwy;->zzb(Lcom/google/android/gms/internal/ads/zzhtz;Ljava/security/Provider;)Lcom/google/android/gms/internal/ads/zzhdh;

    move-result-object p1

    return-object p1
.end method
