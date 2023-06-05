# Ultroid - UserBot
# Copyright (C) 2021-2022 TeamUltroid
# PLease read the GNU Affero General Public License in <https://www.github.com/TeamUltroid/Ultroid/blob/main/LICENSE/>.

FROM theteamultroid/SmsBlastTelegram:main

# set timezone
ENV TZ=Asia/Kolkata
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

COPY installer.sh .

RUN bash installer.sh

# changing workdir
WORKDIR "/root/SmsBlastTelegram"

# start the bot.
CMD ["bash", "startup"]
