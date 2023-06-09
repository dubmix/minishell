/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstdelone.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pdelanno <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/12/08 16:15:26 by pdelanno          #+#    #+#             */
/*   Updated: 2022/12/13 17:49:19 by pdelanno         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../minishell.h"

void	ft_lstdelone(t_token *lst, void (*del)(void*))
{
	if (del == 0)
		return ;
	if (lst != 0)
	{
		(*del)(lst->content);
		free(lst);
	}
}
