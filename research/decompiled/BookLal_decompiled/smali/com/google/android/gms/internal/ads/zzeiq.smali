.class public final Lcom/google/android/gms/internal/ads/zzeiq;
.super Lcom/google/android/gms/internal/ads/zzeir;
.source "SourceFile"


# static fields
.field private static final zzg:Landroid/util/SparseArray;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdbb;

.field private final zzd:Landroid/telephony/TelephonyManager;

.field private final zze:Lcom/google/android/gms/internal/ads/zzeii;

.field private zzf:Lcom/google/android/gms/internal/ads/zzbha$zzq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeiq;->zzg:Landroid/util/SparseArray;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;->zzc:Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;->zzb:Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;->zzd:Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;->zze:Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdbb;Lcom/google/android/gms/internal/ads/zzeii;Lcom/google/android/gms/internal/ads/zzeie;Lcom/google/android/gms/ads/internal/util/zzg;)V
    .locals 0

    invoke-direct {p0, p4, p5}, Lcom/google/android/gms/internal/ads/zzeir;-><init>(Lcom/google/android/gms/internal/ads/zzeie;Lcom/google/android/gms/ads/internal/util/zzg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzc:Lcom/google/android/gms/internal/ads/zzdbb;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zze:Lcom/google/android/gms/internal/ads/zzeii;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzd:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public static final synthetic zze(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;
    .locals 2

    const-string v0, "device"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfks;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "network"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzfks;->zza(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, "active_network_state"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzeiq;->zzg:Landroid/util/SparseArray;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;->zza:Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;

    return-object p0
.end method

.method private static final zzg(Z)Lcom/google/android/gms/internal/ads/zzbha$zzq;
    .locals 0

    if-eqz p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbha$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbha$zzq;

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzbha$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbha$zzq;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final zza(Z)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzc:Lcom/google/android/gms/internal/ads/zzdbb;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzdbb;->zza(Landroid/os/Bundle;)LN2/o;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeip;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzeip;-><init>(Lcom/google/android/gms/internal/ads/zzeiq;Z)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzr(LN2/o;Lcom/google/android/gms/internal/ads/zzhas;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final synthetic zzb(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbha$zzab;
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha$zzab;->zzq()Lcom/google/android/gms/internal/ads/zzbha$zzab$zza;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "cnt"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "gnt"

    invoke-virtual {p1, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbha$zzq;->zzb:Lcom/google/android/gms/internal/ads/zzbha$zzq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzq;

    goto :goto_2

    :cond_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbha$zzq;->zza:Lcom/google/android/gms/internal/ads/zzbha$zzq;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzq;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbha$zzab$zzc;->zza:Lcom/google/android/gms/internal/ads/zzbha$zzab$zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbha$zzab$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbha$zzab$zzc;)Lcom/google/android/gms/internal/ads/zzbha$zzab$zza;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbha$zzab$zzc;->zzc:Lcom/google/android/gms/internal/ads/zzbha$zzab$zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbha$zzab$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbha$zzab$zzc;)Lcom/google/android/gms/internal/ads/zzbha$zzab$zza;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbha$zzab$zzc;->zzb:Lcom/google/android/gms/internal/ads/zzbha$zzab$zzc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbha$zzab$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbha$zzab$zzc;)Lcom/google/android/gms/internal/ads/zzbha$zzab$zza;

    :goto_0
    packed-switch p1, :pswitch_data_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbha$zzab$zzb;->zza:Lcom/google/android/gms/internal/ads/zzbha$zzab$zzb;

    goto :goto_1

    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbha$zzab$zzb;->zzd:Lcom/google/android/gms/internal/ads/zzbha$zzab$zzb;

    goto :goto_1

    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbha$zzab$zzb;->zzc:Lcom/google/android/gms/internal/ads/zzbha$zzab$zzb;

    goto :goto_1

    :pswitch_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbha$zzab$zzb;->zzb:Lcom/google/android/gms/internal/ads/zzbha$zzab$zzb;

    :goto_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzab$zza;->zzg(Lcom/google/android/gms/internal/ads/zzbha$zzab$zzb;)Lcom/google/android/gms/internal/ads/zzbha$zzab$zza;

    :goto_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbha$zzab;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic zzc(ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbha$zzab;Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;)[B
    .locals 6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;->zzz()Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;->zzv(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzb:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeiq;->zzg(Z)Lcom/google/android/gms/internal/ads/zzbha$zzq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;->zzJ(Lcom/google/android/gms/internal/ads/zzbha$zzq;)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzd:Landroid/telephony/TelephonyManager;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzf()Lcom/google/android/gms/ads/internal/util/zzz;

    move-result-object v4

    invoke-virtual {v4, p2, v1}, Lcom/google/android/gms/ads/internal/util/zzz;->zzf(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Lcom/google/android/gms/internal/ads/zzbha$zzq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;->zzN(Lcom/google/android/gms/internal/ads/zzbha$zzq;)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zze:Lcom/google/android/gms/internal/ads/zzeii;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeii;->zzf()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;->zzk(J)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeii;->zzj()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;->zzo(J)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeii;->zzd()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;->zzR(I)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;->zzZ(Lcom/google/android/gms/internal/ads/zzbha$zzaf$zzd;)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;->zzz(Lcom/google/android/gms/internal/ads/zzbha$zzab;)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zzf:Lcom/google/android/gms/internal/ads/zzbha$zzq;

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;->zzV(Lcom/google/android/gms/internal/ads/zzbha$zzq;)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeiq;->zzg(Z)Lcom/google/android/gms/internal/ads/zzbha$zzq;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;->zzg(Lcom/google/android/gms/internal/ads/zzbha$zzq;)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzeii;->zzb()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;->zzad(J)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;->zzc(J)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_on"

    invoke-static {p1, p2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    move v3, v2

    :cond_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzeiq;->zzg(Z)Lcom/google/android/gms/internal/ads/zzbha$zzq;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;->zzF(Lcom/google/android/gms/internal/ads/zzbha$zzq;)Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzicx;->zzbm()Lcom/google/android/gms/internal/ads/zzidd;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbha$zzaf$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzibi;->zzaN()[B

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzd()Lcom/google/android/gms/internal/ads/zzeii;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeiq;->zze:Lcom/google/android/gms/internal/ads/zzeii;

    return-object v0
.end method
