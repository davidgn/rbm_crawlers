.class final synthetic Lcom/google/android/gms/internal/ads/zzhhi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhkq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhhi;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhhi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhhi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhi;->zza:Lcom/google/android/gms/internal/ads/zzhhi;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhde;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhco;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhhm;

    sget v0, Lcom/google/android/gms/internal/ads/zzhhk;->zza:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzc()Lcom/google/android/gms/internal/ads/zzhhl;

    move-result-object p1

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zziaa;->zzb(I)Lcom/google/android/gms/internal/ads/zziaa;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzhhg;->zzd(Lcom/google/android/gms/internal/ads/zzhhl;Lcom/google/android/gms/internal/ads/zziaa;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhhg;

    move-result-object p1

    return-object p1
.end method
