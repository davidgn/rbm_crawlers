.class final synthetic Lcom/google/android/gms/internal/ads/zzhns;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhkq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhns;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhns;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhns;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhns;->zza:Lcom/google/android/gms/internal/ads/zzhns;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhde;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhco;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhnz;

    sget v0, Lcom/google/android/gms/internal/ads/zzhnv;->zza:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhnp;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhnp;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhnp;->zza(Lcom/google/android/gms/internal/ads/zzhnz;)Lcom/google/android/gms/internal/ads/zzhnp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhnz;->zzc()I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zziaa;->zzb(I)Lcom/google/android/gms/internal/ads/zziaa;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhnp;->zzb(Lcom/google/android/gms/internal/ads/zziaa;)Lcom/google/android/gms/internal/ads/zzhnp;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzhnp;->zzc(Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhnp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnp;->zzd()Lcom/google/android/gms/internal/ads/zzhnq;

    move-result-object p1

    return-object p1
.end method
