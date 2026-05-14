.class final synthetic Lcom/google/android/gms/internal/ads/zzhuh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhkq;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhuh;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhuh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhuh;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhuh;->zza:Lcom/google/android/gms/internal/ads/zzhuh;

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

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhuf;

    sget v0, Lcom/google/android/gms/internal/ads/zzhul;->zza:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhym;->zzc()Lcom/google/android/gms/internal/ads/zzhym;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhuf;->zzc()Lcom/google/android/gms/internal/ads/zzhue;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhym;->zza()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhzy;->zza([B)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzhum;->zzc(Lcom/google/android/gms/internal/ads/zzhue;Lcom/google/android/gms/internal/ads/zzhzy;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhum;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhym;->zzb()[B

    move-result-object p2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zziaa;->zza([BLcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zziaa;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzhug;->zzc(Lcom/google/android/gms/internal/ads/zzhum;Lcom/google/android/gms/internal/ads/zziaa;)Lcom/google/android/gms/internal/ads/zzhug;

    move-result-object p1

    return-object p1
.end method
