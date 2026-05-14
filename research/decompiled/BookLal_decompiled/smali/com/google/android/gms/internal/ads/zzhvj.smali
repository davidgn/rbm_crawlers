.class public final Lcom/google/android/gms/internal/ads/zzhvj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhmp;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhvj;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzhmj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhvj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhvj;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvj;->zza:Lcom/google/android/gms/internal/ads/zzhvj;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvg;->zza:Lcom/google/android/gms/internal/ads/zzhvg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhld;

    const-class v2, Lcom/google/android/gms/internal/ads/zzhdg;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhmj;->zzd(Lcom/google/android/gms/internal/ads/zzhmi;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhmj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvj;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzc()V
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvj;->zza:Lcom/google/android/gms/internal/ads/zzhvj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhls;->zzc(Lcom/google/android/gms/internal/ads/zzhmp;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhls;->zza()Lcom/google/android/gms/internal/ads/zzhls;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvj;->zzb:Lcom/google/android/gms/internal/ads/zzhmj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhls;->zzb(Lcom/google/android/gms/internal/ads/zzhmj;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzhdg;

    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/ads/zzhdg;

    return-object v0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzhky;Lcom/google/android/gms/internal/ads/zzhlg;Lcom/google/android/gms/internal/ads/zzhmo;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhlg;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlq;->zza()Lcom/google/android/gms/internal/ads/zzhlq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlq;->zzb()Lcom/google/android/gms/internal/ads/zzhli;

    move-result-object v0

    const-string v1, "public_key_sign"

    const-string v2, "sign"

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzhli;->zza(Lcom/google/android/gms/internal/ads/zzhky;Lcom/google/android/gms/internal/ads/zzhlg;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhlh;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/zzhlk;->zza:Lcom/google/android/gms/internal/ads/zzhlh;

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhvi;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhvh;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhcz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhcz;->zzc()Lcom/google/android/gms/internal/ads/zzhcx;

    move-result-object v2

    invoke-interface {p3, v2}, Lcom/google/android/gms/internal/ads/zzhmo;->zza(Lcom/google/android/gms/internal/ads/zzhcx;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/ads/zzhdg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhcz;->zzc()Lcom/google/android/gms/internal/ads/zzhcx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhcx;->zzc()I

    move-result p1

    invoke-direct {v1, p3, p1}, Lcom/google/android/gms/internal/ads/zzhvh;-><init>(Lcom/google/android/gms/internal/ads/zzhdg;I)V

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhvi;-><init>(Lcom/google/android/gms/internal/ads/zzhvh;Lcom/google/android/gms/internal/ads/zzhlh;)V

    return-object v0
.end method
