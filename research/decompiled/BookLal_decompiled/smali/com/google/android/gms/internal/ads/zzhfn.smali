.class final synthetic Lcom/google/android/gms/internal/ads/zzhfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhmi;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhfn;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhfn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfn;->zza:Lcom/google/android/gms/internal/ads/zzhfn;

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhfl;

    sget v0, Lcom/google/android/gms/internal/ads/zzhfo;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhil;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhil;->zzb(Lcom/google/android/gms/internal/ads/zzhfl;)Lcom/google/android/gms/internal/ads/zzhch;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhyl;->zzb(Lcom/google/android/gms/internal/ads/zzhfl;)Lcom/google/android/gms/internal/ads/zzhch;

    move-result-object p1

    :goto_0
    return-object p1
.end method
